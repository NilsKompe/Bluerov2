import rospy
from geometry_msgs.msg import Point32
from visualization_msgs.msg import MarkerArray
import numpy as np

class selfOrganisingMap(object):
    def __init__(self, numberOfNodes):

        #Initialise adjacencyMatrix which shows neighbours
        self.adjacencyMatrix = np.zeros((numberOfNodes, numberOfNodes))
        for i in range(0, numberOfNodes - 1):
            self.adjacencyMatrix[i][i+1] = 1
            self.adjacencyMatrix[i+1][i] = 1

        self.nodes = []
        self.color = (0, 75.0/255.0, 90.0/255.0)

        self.tmpPoint = Point32()
        self.tmpPoint.x = 0
        self.tmpPoint.y = 0
        self.tmpPoint.z = 0
        self.visualisation_Msgs = MarkerArray()

        for i in range(0, numberOfNodes):
            self.nodes.append(self.tmpPoint)

        self.somPub = rospy.Publisher("som", MarkerArray, queue_size=1)
        self.color = [0, 150/255, 50/255]

    def getAdjMatrix(self):
        return self.adjacencyMatrix
