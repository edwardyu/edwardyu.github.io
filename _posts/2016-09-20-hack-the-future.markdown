---
layout: post
title:  "Hack the Future: Notes from Facebook CTO Mike Schroepfer"
date:   2016-09-20 -0700
categories: tech
---

*Facebook CTO Mike Schroepfer gave a talk at Facebook New York yesterday about the future of Facebook. Here are my notes from the event. Everything is paraphrased and the notes are not direct quotes.*

![Facebook New York](/assets/fbny.jpg)

Facebook's 10 year plan is focused on three main areas: connectivity, artificial intelligence, and virtual reality.

# Connectivity
- Facebook's mission is about connecting people, and that means getting the whole world online. Right now, only 3.2 billion people out of the world population of 7.3 billion have internet access.
- What should we do to solve this? We should try everything from fiber lines underground to satellites in space. Laying underground cables disrupts cities and is generally hard to do so Facebook is focusing on above-ground solutions.
- We were planning to fly a satellite up in SpaceX's rocket but it blew up on the launchpad. 
- We do have another plan called **Project Aquila**, which is using UAVs to beam Internet to the ground. 
    - Each UAV has the wingspan of a Boeing 737
    - One UAV gets its connection from a ground source, and then beams it to other UAVs using laser connectivity. It's like a fiber network in the sky.
    - Each UAV can provide Internet access to 50 square miles on the ground.
- There is another project for Internet in urban areas, which consists of placing router-like objects on telephone poles and such. There are some cool algorithms that will auto switch routers if the connection is impeded by a bus or something.

# Artifical Intelligence
- In 1993, Yann LeCun (now director of AI Research at Facebook) invented LeNet. It was a 4 layer deep convolutional neural net that could recognize handwritten digits.
- There have been huge advances since then, driven by three things.
    - There has been a $$10^6$$ times increase in computing power per $1000 since then.
    - Facebook and other researchers now have access to massive amounts of training data. The entire database of classified images available back then is uploaded to Facebook every three minutes.
    - There have been a number of very significant algorithmic wins as well.
- In the ImageNet classification challenge, the 2012 record was 55% accuracy vs. 80% accuracy in 2016.
- The winning algorithm actually requires *less* compute cycles than previous algorithms, bucking the trend of getting better results by throwing more hardware at the problem.
- Today, image recognition algorithms have detailed understanding of the position of figures, for example, they can recognize a batter's stance vs. a catcher's crouch.
- Impressively, algorithms can even label images, like "The man is surfing in the ocean." However, the algorithms still have no semantic understanding of what is going on in pictures.
- Examples of semantic understanding include recognizing that an image of a pepperoni pizza is not vegetarian and that a boy with glasses does not have 20/20 vision.
- Other advances in AI involve solving logic puzzles. Example:

> Mary went to the bathroom. 
John moved to the hallway. 
Mary travelled to the office. 
Where is Mary? *A:office*

- There are a list of 20 tasks, available [here](http://arxiv.org/abs/1502.05698). AI can now solve 19/20 tasks; the one it cannot solve involves inductive reasoning.

# Virtual Reality
- VR is now advanced enough to fool the human mind. In a virtual world where the participant is seemingly standing on the edge of a building, only 2/100 participants are brave enough to obey the command to take a step forward.
- Fundamentally, VR is important because it is the ultimate empathy device. It is the closest we can possibly get to stepping in someone else's shoes.
- Researchers are using VR for breakthroughs in the medical field. For example, some paralyzed patients regained motor control when they put on a VR headset that depicted themselves walking. Other researchers have used VR to lessen pain.
- There are business applications as well. The Oculus team uses VR to have virtual in person meetings. 

# Selected Q&A
**Q**: Is Facebook exploring Augmented Reality (AR) as well?    
**A**: AR is not as interesting as VR. I've seen two main applications of AR so far. The first is gaming, i.e., there are whales coming out of your couch or something. This doesn't make much sense to me because anything AR can do in this regard, VR can do better. The second is checking notifications, email, sms, directly in your field of view. This obviously isn't the most impactful problem. AR is limited because you are still in the "real" world and thus you care about what is happening there.

**Q**: Is there any research being done on psychological effects from using VR?     
**A**: We are doing basic UX research, but this isn't a huge concern. VR headsets get uncomfortable after a while, and you need a water or a bathroom break which breaks immersion.

**Q**: Can you comment on the controversy over Free Basics in India?      
**A**: Free Basics was a program to provide free access to the Internet in India. There was concern over net neutrality because only certain websites could be accessed. First of all, it is not true that only Facebook could be accessed. You could visit search engines, Wikipedia, etc. There was never any plan to restrict access only to Facebook or to charge for other sites, thus locking in the consumer. We believe Internet access is fundamentally important because for every 10 people brought online, 2 are brought out of poverty. We will keep pushing forward on this.





