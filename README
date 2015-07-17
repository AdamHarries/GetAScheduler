# GetAScheduler

A cluster I was using had no scheduling policy in place, which meant that some of the "heavier" users ended up hogging all of the GPU nodes. Occasionally, one of the nodes would become available, however this was generally only temporary. In order to ensure that I'd have access to temporary available nodes when I needed them, I decided to try and beat the hoggers at their own game.

This small program hogs an NVIDIA gpu, and runs an infinite loop on it. It's not smart, it's not clean - but it has been necessary. 