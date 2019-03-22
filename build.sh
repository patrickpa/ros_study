cd catkin_ws
rosdep init
rosdep update
rosdep install --from-paths ./src --ignore-src -r -y --rosdistro kinetic
rm -rf .catkin_tools
catkin config --extend /opt/ros/kinetic
catkin clean --yes
catkin build