#import "resume.typ": *
#show: resume.with(name: "Zhicun Tan", lang: "en")

#header([Zhicun Tan #text(size: 13pt)[谈至存]], [
  Birthday: 06.06.1998 · Nationality: China \
  Phone: +(86) 13402536577 \
  #link("mailto:tanzc9866@126.com")[tanzc9866\@126.com] \
  #link("https://github.com/SpartanTan")[GitHub] · #link("https://www.linkedin.com/in/tanzhicun")[LinkedIn]
])

= Personal Statement
I hold a Master's degree in Autonomous Systems from Technical University of Denmark, having worked on C++ vehicle dynamics simulations, Matlab drone modelling & control and Deep RL controllers. My experience includes engineering in FSAE and various robotics competitions, demonstrating strong technical and teamwork skills.

= Education
#entry(
  [Technical University of Denmark (DTU)], [Copenhagen, Denmark],
  [Master of Science in Engineering (MScEng), *Autonomous Systems*], [01.2021 - 12.2023],
  details: [GPA: 8.86/12; Courses: Linear control design, Perception for AS, Model-based system engineering],
)
#entry(
  [Chalmers University of Technology (exchange)], [Gothenburg, Sweden],
  [MSc in *System, Control and Mechatronics*], [09.2022 - 12.2023],
  details: [Courses: Vehicle Motion Engineering, Modelling and Simulation, Artificial Neural Networks, MPC],
)
#entry(
  [Nanjing Institute of Technology], [Nanjing, Jiangsu],
  [BSc in *Mechatronics*], [09.2016 - 06.2020],
  details: [GPA: 3.47; Rank in major: *10/162*],
)

= Work Experience
#entry([Plusgo], [Suzhou, Jiangsu], [Planning and Control Engineer], [12.2024 - 05.2025])
#bullets(
  [Implemented the data preprocessing part of prediction algorithm Simpl in C++, reducing processing time to *under 10 ms*.],
  [Developed a backtracking collision detection feature using the GJK algorithm, achieving a *20% speedup*.],
  [Conducted vehicle dynamics calibration, as well as lidar-camera calibration; wrote multiple documents.],
  [Implemented a road query module based on KDTree, one small step for HD map path planning.],
  [Developed a Python-based pipeline to convert point cloud maps into topological maps, including DWG file parsing, coordinate transformation, and visualization.],
  [Participated in deployment and debugging of the PNC module.],
)

= Internship & Work Experience
#entry(
  [Hyperview - Apetech Autonomous Racing Car Project], [ZZIC],
  [Intern, Innovation and R&D Department (Matlab, Vehicle Control, Speed Planner)], [10.2024],
)
#bullets(
  [Responsible for developing the simulation with heading and lateral controllers.],
  [Developed a speed planner using track curvature calculated by the Menger method.],
  [Implemented forward/backward adjustments to ensure the planned speed is consistent with the vehicle's acceleration and deceleration limits.],
  [Participated in tuning the vehicle control system, achieving a lap time of *2 min 40 s*.],
)
#entry(
  [#link("https://www.chalmersformulastudent.se/cfs-2023-car-margareta")[Chalmers Formula Student]], [Chalmers],
  [Autonomous System Engineer (C++, Gazebo, ROS, Vehicle Dynamics Modelling)], [09.2022 - 08.2023],
)
#bullets(
  [Developed a car state estimator using a LuGre tire model, implementing a *15-state Kalman filter*.],
  [Developed a C++ plugin for *4WD vehicle dynamics simulation* using *RK4*.],
  [Resolved conflicts when migrating the legacy simulator to the latest Gazebo.],
  [Contributed to developing the launch system for autonomous systems with test options.],
  [Assisted the team in *winning the 2023 FSG Driverless Cup* and securing 7th place at FS East.],
)

#pagebreak()
= Internship & Work Experience (continued)
#entry(
  [Off-road Robot Lab], [NJIT, Nanjing],
  [MCU Developer & Head of the Lab (Embedded Systems, C, PID, Project Management)], [07.2017 - 07.2018],
)
#bullets(
  [Developed a lane-following car on STM32, featuring camera/laser rangefinder tracking and robotic arm control.],
  [Led the team to consecutive wins at provincial & national level robot competitions.],
  [Had two utility patents granted and completed a Challenge Cup project on pipeline robots.],
)

= Projects
#entry(
  [Reinforcement learning for robust mobile robot navigation control #project-links("https://1drv.ms/v/s!Al-YZOpjHxorgslaTIu4oeTj8TYROw?e=EflSJj", "https://github.com/SpartanTan/RLATR")], [DTU],
  [Independent Developer (Kinematic Modelling, Python, Reinforcement Learning, PyQt)], [07.2023 - 12.2023],
)
#bullets(
  [Developed the kinematic model for a two-wheel drive robot and a laser scanner module in Gymnasium.],
  [Developed an algorithm to generate randomized paths, obstacles, and corridor walls for the training environment.],
  [Implemented reward functions for path tracking and obstacle avoidance, including testing and parameter tuning.],
  [Created a GUI tool for easy tweaking of training and environment parameters and for visualizing simulations.],
  [Trained the NN controller with PPO, achieving a *60% success rate* in unknown environments with obstacles.],
)
#entry(
  [Unmanned autonomous systems #project-links("https://1drv.ms/v/s!Al-YZOpjHxorgslZm5SJR7mVF_eoPw?e=4kRkvd", "https://github.com/SpartanTan/31390-UAS-2022")], [DTU],
  [Project Developer (Matlab, Quadcopter Modelling, Trajectory Planning)], [06.2022 - 06.2022],
)
#bullets(
  [Created both nonlinear and linear models of the drone in Simulink for performance comparison.],
  [Developed position and altitude controllers in Simulink enabling set-point flight for a quadcopter.],
  [Implemented path planning using A\* in a 3D environment, successfully navigating a drone through a 3D maze.],
  [Utilized polynomial optimization for trajectory planning, making the quadcopter navigate through 3D hoops.],
)

= #link("https://1drv.ms/f/s!Al-YZOpjHxorgslbx6yg1s1e4ZGl1A?e=1DVmBG")[Awards]
#award([*2023 Formula Student Germany Driverless Cup overall winner*], [08.2023])
#award([First Award in Intellect Vehicle Challenge], [06.2019])
#award([Champion in 2018 China Engineering Robot Competition], [04.2018])
// The year/date mismatch below is retained from cv_en.tex; confirm before changing.
#award([First Award in 2018 China Robot Competition], [08.2017])

= Skills
*Coding:* Python, C/C++, Matlab/Simulink, Linux, ROS, Docker, Git \
*Autonomous Systems Expertise:* PID/LQR/MPC, Deep RL, modelling & control of drones, vehicles, and ROV \
*Language:* IELTS 6.5 (Oral 7.0). Worked in an international engineering team, demonstrating strong communication skills.
