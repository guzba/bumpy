import bumpy, chroma, fidget, fidget/opengl/context, fidget/openglbackend, vmath

var
  s: Segment
  r: Rect

s.at.x = 10
s.at.y = 10

r.x = 150
r.y = 200
r.w = 300
r.h = 200

proc drawMain() =
  s.to = mouse.pos

  ctx.line(s.at, s.to, parseHtmlColor("#2ecc71"))

  group "rect":
    box r.x, r.y, r.w, r.h
    if overlaps(s, r):
      fill "#e74c3c", 0.75
    else:
      fill "#3498db", 0.75

windowFrame = vec2(600, 600)
startFidget(drawMain)
