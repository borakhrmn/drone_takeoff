#!/usr/bin/env python3

import sys
import rospy
from drone.srv import Sender

rospy.init_node("client", anonymous=True)

x = int(sys.argv[1])
y = int(sys.argv[2])

rospy.wait_for_service("sender")
client = rospy.ServiceProxy("sender", Sender)
client.call(x,y)
