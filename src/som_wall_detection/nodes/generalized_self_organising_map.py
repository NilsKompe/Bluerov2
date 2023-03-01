import random
import sys
from datetime import datetime
from geometry_msgs.msg import Point32
import numpy as np
from self_organising_map import selfOrganisingMap


class generalizedSelfOrganisingMap(selfOrganisingMap):

    def __init__(self, numberOfNodes):
        super().__init__(numberOfNodes)

        self.color = [236.0 / 255.0, 116.0 / 255.0, 4.0 / 255.0]

        # determine indices of edges
        self.edges = []
        for k in range(0, len(self.adjacencyMatrix)):
            for l in range(k + 1, len(self.adjacencyMatrix[0])):
                if self.adjacencyMatrix[k][l] == 1:
                    self.edges.append(k)
                    self.edges.append(l)

    def train(self, trainingData, trainingDataIndices, minIntensity, maxIntensity):
        # TODO Filterung der Daten?
        # TODO Initializsierung der SOM


        if self.nodes[0].x == 0.0 and self.nodes[0].y == 0.0:
            for i in range(0, len(self.nodes)):
                step = int(len(trainingDataIndices) / (len(self.nodes) + 1))
                self.nodes[i] = Point32(trainingData.points[trainingDataIndices[(i + 1) * step]].x,
                                        trainingData.points[trainingDataIndices[(i + 1) * step]].y, 0)

        # TODO Parameter von aussen aendern koennen (rqt-reconfigure)
        epsilonIni = 0.2
        epsilonFin = 0.1
        epocheMax = 100
        numSamplesEpoche = 1000
        delta = 0.01

        random.seed(datetime.now())

        for epoche in range(0, epocheMax):
            # epoche specific learning rate epsilon
            epsilon = epsilonIni * (epsilonFin / epsilonIni) ** float(epoche / epocheMax)

            if numSamplesEpoche < len(trainingDataIndices):
                iterationSize = numSamplesEpoche
            else:
                iterationSize = len(trainingDataIndices)

            for s in range(0, iterationSize):
                # Choose random sample
                sampleIndex = 0
                if len(trainingDataIndices) > 1:
                    sampleIndex = int(np.random.rand() * (len(trainingDataIndices) - 1))
                    # TODO z is set to zero (perhaps we want to use 3D data)
                sample = Point32(trainingData.points[trainingDataIndices[int(sampleIndex)]].x,
                                 trainingData.points[trainingDataIndices[int(sampleIndex)]].y,
                                 0)

                # Find nearest SOM node
                minDistNodes = sys.float_info.max
                indNearestNode = 0
                for idxNodes in range(0, int(len(self.nodes))):
                    dist2 = np.sqrt((sample.x - self.nodes[idxNodes].x) ** 2 +
                                    (sample.y - self.nodes[idxNodes].y) ** 2)
                    if dist2 < minDistNodes:
                        minDistNodes = dist2
                        indNearestNode = idxNodes

                # find nearest SOM edge
                minDistEdge = sys.float_info.max
                minAlpha = 0
                min_w_i = 0
                min_w_j = 0

                for i in range(0, i < int(len(self.edges)), 2):
                    w_i = self.edges[i]
                    w_j = self.edges[i + 1]

                    w_i_w_j = self.nodes[w_j]
                    w_i_w_j = Point32(w_i_w_j.x - self.nodes[w_i].x, w_i_w_j.y - self.nodes[w_i].y,
                                      w_i_w_j.z - self.nodes[w_i].z)

                    w_i_x = Point32(sample.x - self.nodes[w_i].x,
                                    sample.y - self.nodes[w_i].y,
                                    sample.z - self.nodes[w_i].z)

                    scalar = w_i_w_j.x * w_i_x.x + w_i_w_j.y * w_i_x.y + w_i_w_j.z * w_i_x.z
                    norm2 = w_i_w_j.x * w_i_w_j.x + w_i_w_j.y * w_i_w_j.y + w_i_w_j.z * w_i_w_j.z
                    if norm2==0:
                        norm2= 0.00001
                    alpha = scalar / norm2
                    if 0.0 <= alpha <= 1.0:
                        skalarProdwixwix = w_i_x.x * w_i_x.x + w_i_x.y * w_i_x.y + w_i_x.z * w_i_x.z
                        dist = skalarProdwixwix - scalar * scalar / norm2
                        if dist < minDistEdge:
                            minDistEdge = dist
                            minAlpha = alpha
                            min_w_i = w_i
                            min_w_j = w_j

                if maxIntensity - minIntensity == 0:
                    epsilonIntensity = 1
                else:
                    epsilonIntensity = 1

                # change edge or node
                if minDistEdge < minDistNodes:
                    # updatew_j
                    produktW_i_w_j = (-(minAlpha * minAlpha + delta))
                    w_i_w_j = Point32((self.nodes[min_w_j].x - self.nodes[min_w_i].x) * produktW_i_w_j,
                                      (self.nodes[min_w_j].y - self.nodes[min_w_i].y) * produktW_i_w_j,
                                      (self.nodes[min_w_j].z - self.nodes[min_w_i].z) * produktW_i_w_j)

                    w_i_x = Point32((sample.x - self.nodes[min_w_i].x) * minAlpha,
                                    (sample.y - self.nodes[min_w_i].y) * minAlpha,
                                    (sample.z - self.nodes[min_w_i].z) * minAlpha)

                    w_i_w_j = Point32(w_i_w_j.x + w_i_x.x, w_i_w_j.y + w_i_x.y, w_i_w_j.z + w_i_x.z)
                    w_i_w_j = Point32(w_i_w_j.x * (epsilon * epsilonIntensity),
                                      w_i_w_j.y * (epsilon * epsilonIntensity),
                                      w_i_w_j.z * (epsilon * epsilonIntensity))

                    # Save w_j before update because of calculation of delta w_i
                    tmp = self.nodes[min_w_j]
                    self.nodes[min_w_j] = Point32(self.nodes[min_w_j].x + w_i_w_j.x,
                                                  self.nodes[min_w_j].y + w_i_w_j.y,
                                                  self.nodes[min_w_j].z + w_i_w_j.z)

                    # update w_i
                    w_i_w_j = tmp
                    produktminusalpha = ((1 - minAlpha) * (1 - minAlpha) + delta)
                    w_i_w_j = Point32((w_i_w_j.x - self.nodes[min_w_i].x) * produktminusalpha,
                                      (w_i_w_j.y - self.nodes[min_w_i].y) * produktminusalpha,
                                      (w_i_w_j.z - self.nodes[min_w_i].z) * produktminusalpha)

                    produktw_j_x = (1 - minAlpha)
                    w_j_x = Point32((sample.x - tmp.x) * produktw_j_x,
                                    (sample.y - tmp.y) * produktw_j_x,
                                    (sample.z - tmp.z) * produktw_j_x)

                    w_i_w_j = Point32(w_i_w_j.x + w_j_x.x, w_i_w_j.y + w_j_x.y, w_i_w_j.z + w_j_x.z)
                    w_i_w_j = Point32(w_i_w_j.x * (epsilon * epsilonIntensity),
                                      w_i_w_j.y * (epsilon * epsilonIntensity),
                                      w_i_w_j.z * (epsilon * epsilonIntensity))
                    self.nodes[min_w_i] = Point32(self.nodes[min_w_i].x + w_i_w_j.x,
                                                  self.nodes[min_w_i].y + w_i_w_j.y,
                                                  self.nodes[min_w_i].z + w_i_w_j.z)

                else:
                    # *****Standard SOM Algorithm***** /
                    # Update nearest point of SOM
                    # Calculate Vector from nearest Som point to sample and scale it by epsilon
                    addPoint = Point32(sample.x - self.nodes[indNearestNode].x,
                                       sample.y - self.nodes[indNearestNode].y,
                                       sample.z - self.nodes[indNearestNode].z)
                    factor = epsilon * float(epsilonIntensity)

                    addPoint = Point32(addPoint.x * factor, addPoint.y * factor, addPoint.z * factor)

                    self.nodes[indNearestNode] = Point32(self.nodes[indNearestNode].x + addPoint.x,
                                                         self.nodes[indNearestNode].y + addPoint.y,
                                                         self.nodes[indNearestNode].z + addPoint.z)

        return self.nodes
