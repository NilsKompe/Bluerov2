from self_organising_map import selfOrganisingMap
from geometry_msgs.msg import Point32
import numpy as np


class standard_self_organising_map(selfOrganisingMap):

    def __init__(self, numberOfNodes):
        super().__init__(numberOfNodes)

    # Train the position of the markers by placing the nodes and moving them towards
    # random sample points from the filtered point cloud (the training data). The trainingDataIndices show
    # where the important points are.
    def train(self, trainingData, trainingDataIndices, minIntensity, maxIntensity):

        # Initial learning rate
        epsilonIni = 0.1
        # final learning rate
        epsilonFin = 0.01
        # max number of iterations
        epocheMax = 20
        # number of samples taken in one iteration
        numSamplesEpoche = 3000

        # For each epoche/iteration do:
        for epoche in range(epocheMax):

            # calculate the new epsilon wich is a time dependent learning rate with equotation (3) in the paper
            epsilon = epsilonIni * np.power(epsilonFin / epsilonIni, float(epoche / epocheMax))
            # the learning rate for the neighbour nodes is half the normal rate
            epsilonNeighbours = epsilon / 2.0

            # if our number of trainingData is lower than the number of samples per epoche, iterate over complete data
            if numSamplesEpoche < len(trainingDataIndices):
                iterationSize = numSamplesEpoche
            else:
                iterationSize = len(trainingDataIndices)

            # Then iterate through the data
            for s in range(iterationSize):

                # Choose a random sample from the trainingData
                sampleIndex = 0
                if len(trainingDataIndices) > 1:
                    sampleIndex = int(np.random.rand() * (len(trainingDataIndices) - 1))
                # TODO z is set to zero (perhaps we want to use 3D data?)
                sample = Point32(trainingData.points[trainingDataIndices[sampleIndex]].x,
                                 trainingData.points[trainingDataIndices[sampleIndex]].y, 0)

                # Find nearest SOM node to sample, by iterating over every node and calculating the distance
                minDist = float("inf")
                indNearestNode = 0
                for idxNodes in range(len(self.nodes)):
                    dist2 = np.sqrt((sample.x - self.nodes[idxNodes].x) ** 2 + (sample.y - self.nodes[idxNodes].y) ** 2)
                    if dist2 < minDist:
                        minDist = dist2
                        indNearestNode = idxNodes

                # Update nearest point of SOM by moving it closer to the sample
                # To do so, calculate the vector between the sample and the node (x-wi)
                addPoint = Point32(sample.x - self.nodes[indNearestNode].x,
                                   sample.y - self.nodes[indNearestNode].y,
                                   sample.z - self.nodes[indNearestNode].z)
                # Then calculate tau (epsilonIntensity), the samples intensity factor like in equotation (8)
                indexInPointCloud = trainingDataIndices[sampleIndex]
                if maxIntensity == minIntensity:
                    epsilonIntensity = (trainingData.channels[0].values[indexInPointCloud] - minIntensity) / 0.000001
                else:
                    epsilonIntensity = (trainingData.channels[0].values[indexInPointCloud] - minIntensity) / (
                                maxIntensity - minIntensity)
                # Then move the nearest node like in equotation (6)
                addPoint = Point32(addPoint.x * epsilon * epsilonIntensity,
                                   addPoint.y * epsilon * epsilonIntensity,
                                   addPoint.z * epsilon * epsilonIntensity)
                self.nodes[indNearestNode] = Point32(self.nodes[indNearestNode].x + addPoint.x,
                                                     self.nodes[indNearestNode].y + addPoint.y,
                                                     self.nodes[indNearestNode].z + addPoint.z)

                # Also update Neighbours of the changed node with half the learning rate
                for n in range(len(self.adjacencyMatrix[0])):
                    if self.adjacencyMatrix[indNearestNode][n] == 1:
                        addPoint = Point32(sample.x - self.nodes[n].x,
                                           sample.y - self.nodes[n].y,
                                           sample.z - self.nodes[n].z)
                        addPoint = Point32(addPoint.x * epsilonNeighbours * epsilonIntensity,
                                           addPoint.y * epsilonNeighbours * epsilonIntensity,
                                           addPoint.z * epsilonNeighbours * epsilonIntensity)
                        self.nodes[n] = Point32(self.nodes[n].x + addPoint.x,
                                                self.nodes[n].y + addPoint.y,
                                                self.nodes[n].z + addPoint.z)

        return self.nodes
