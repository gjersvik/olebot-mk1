# Todo make title.

todo make summary

## So why godot?

In my perivus post I just deacred that i am going to use Godot for robot simuation. But why? What other options are there and why not any of them?

First what am i looking for. Well somting simple that can simulate a 3d environment and 3d physics. And can esaly interface with rust that i plan to use for the robot it self. That last one is not a hard requrement as there is many ways to get to icmpatibale softwares to talk to etchother. But suport is a plus.

So lest go over some categories and why they where not chosen.

### ROS and Gazebo

If you are doing robotics there is one big dog. Robot Opperating System or ROS. That comes with an intergrated simulation package called Gazebo. Its so well known at least in academia. And is so popular that it shuld be anyones first coice. But.

ROS is a beast. Its big its complicated. Its a lot harder to learn than there are good documations. We have played around with where I work. And we joke that installing ROS is a master teases. So yea. Also its a full robot opperating system both for the robot and controller. And is not built for small robots that only need a micro controller. Ofcurse on the plus side it have a lot of pre built packages fot ting like sensing arm movement revese cinamitics and hole lot of other robot tools and problems. So its can be a great tool if your building a comersial robot and you need somting wokring quikly. And speding weeks installing and getting to know the basic is not that great of a time investmnet. And if you lerned robotics at univerty most likly you already know ROS.

But for me its overkill. I don't want get into it here but ROS is going in a difrent direction than what I want to go. So i will be figting the system witout the benefits of its more advanced models that have no use for yet.

### Unreal Engine and Unity

Okey so no robotics sim. So the next one is to use a genral 3d game engine. The big and most common is Unety and Unreal Engine. So why not go with the big dogs the most common the best documated and most popular. 

They are both big properiatay enigens with emence power. But lacks a bit on the user frendly side. Unreal Becouse its a big egeine for big games. Unety beacous well lack of fokus for many year have leaft is as a borken mess of and engine. Also none of them have any rust suport that i know of. So that will be compliacted. But in short i am not bulding a AA or AAA game here i have other simpler options.

### Bevy

I mention Rust. There are game engines written directly in rust i can use like Bevy. And that is correct and i have played around with it. But in short its not ready. The lack of an editor and viewer holds it back. Also it actualy have no built in pyssics so have to use a plugin for that. That is not natively built in. The lack of propper UI components also hurts. I want to both show info and easly be able to add buttons to my scene. And even the Bevy team recomedn looking at Godot for propper game and project. 

So the parts are there i just need to assemble them. There is a loot i like about the way bevy do things as software developer but its just to beare bones. Will have to spend weeks just to get the simple fist fake version up and running.

### So Godot.
Godot is just right. Not to complicate as Unreal and Uniey and not to simple as Bevy. Also being and opensource engine it have an exselent interoprabilety story. It do not try to wall you in. So yes there is a rust plugin that i can use. It comes with a full editor. Have 3d world. Comes with its own pysick enigne and is in the proses of moving to jolt. Have and great editor. But it lacks many of there nice features of Unreal and Unety for making games that look good out of the gate. But it have the basics. And since it open source and so open it play nice with other open software like blender.

## Hello Godot.

Okey enogh procastination its time to actualy do somting. My goals are:

- Install the latest godot and create a project.
- A ui element that shows what direction keys are pressed. For better video demos and a bit of debugging.
- Have a 3d shape like a box move around 3d plane based on user input. Like just a box.
- Give the 3d shapes proper weels defined by Jolt pyssiks.

I plan to only use the Godot own progamming lanuage GScript for the rapid itterateon. Rust comes later.