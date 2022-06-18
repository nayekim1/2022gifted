Web VPython 3.2

def move(obj) : 
    k = keysdown()
    if 'up' in k : 
        obj.pos.x += 0.05
    if 'down' in k:
        obj.pos.x -= 0.05
    if 'left' in k: 
        obj.pos.z -= 0.05
    if 'right' in k:
        obj.pos.z += 0.05
    if 'n' in k : 
        obj.pos.y += 0.05
    if 'm' in k : 
        obj.pos.y -= 0.05

colors = [color.red, color.orange, color.yellow, color.green, color.blue, color.purple, color.magenta]
boll = sphere(color = color.cyan, radius = 0.2, emissive = True)
attach_light(boll)
rings = []

for i in range(7) : 
    rings.append(ring(pos = vec(i,0,0), color = colors[i]))

while True :
    rate(100)
    move(boll)
    scene.camera.pos = boll.pos + vec(2,0,0)
    scene.camera.axis = vec(1,0,0)
    for i in range(len(rings)) : 
        if mag(boll.pos - rings[i].pos) <= 0.5 : 
            rings[i].color = x.color
        else :
            rings[i].color = colors[i]
