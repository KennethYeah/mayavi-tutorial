import numpy as np
from mayavi import mlab
import time
x, y = np.mgrid[-3:3:100j,-3:3:100j]
z = np.sin(x*x + y*y)
s = mlab.surf(x, y, z)
for i in range(25):
    s.mlab_source.scalars = np.sin((x*x + y*y) + 8*np.pi*i/25)
    mlab.process_ui_events()
    mlab.savefig('/tmp/anim_%03d.png')
    time.sleep(0.05)
