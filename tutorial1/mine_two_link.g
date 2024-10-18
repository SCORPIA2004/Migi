world: {}

zero (world): {
  shape: sphere,
  size: [0.05],
  mass: 1.0,
  X: "T t(0 0 0) d(180 0 0 1)" 
    # 180 degree rotation about the x-axis
    # 1 second duration of rotation
    # translation of 0, 0, 0
}

# first joint
joint1 (zero): {
  joint: hingeX,
  pre: "T t( 0 0 0)",
}

# first link
link1 (joint1): {
  shape: capsule, size: [  0.3, 0.05 ],
  color: [0, 0, 1],
  Q: [ 0, 0, 0.2]
}

# second joint
joint2 (link1): {
  joint: hingeX,
  pre: "T t( 0 0 0.15 )"
}

# second link
link2 (joint2): {
  shape: capsule, 
  size: [ 0.2, 0.05 ],
  color: [ 1, 0, 0 ],
  Q: [ 0, 0, 0.15]
}

# third joint
joint3 (link2): {
  joint: hingeX,
  pre: "T t( 0 0 0.12 )"
}

# end effector
end-effector (joint3): {
  shape: sphere,
  size: [0.05],
  color: [ 0, 1, 0 ],
  Q: [ 0, 0, 0.03 ]
}