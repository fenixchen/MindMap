#!/usr/bin/python
# -*- coding: UTF-8 -*-

from fontTools.ttLib import TTFont
from tkinter import *  # 导入 Tkinter 库

from math import sin

WIDTH, HEIGHT = 640, 480

window = Tk()
canvas = Canvas(window, width=WIDTH, height=HEIGHT, bg="#000000")
canvas.pack()
img = PhotoImage(width=WIDTH, height=HEIGHT)
image_on_canvas = canvas.create_image(0, 0, anchor=NW, image=img)
phase = 0


def tick():
    global phase
    global image_on_canvas
    newimg = PhotoImage(width=WIDTH, height=HEIGHT)
    if phase % 20 == 0:
        for x in range(4 * WIDTH):
            y = int(HEIGHT / 2 + HEIGHT / 4 * sin((x + phase) / 80.0))
            newimg.put("#ffffff", ((x + phase) // 4, y))
    canvas.itemconfig(image_on_canvas, image=newimg)
    canvas.img = newimg
    phase = phase + 10
    canvas.after(1000, tick)


canvas.after(1000, tick)

mainloop()

"""
from tkinter import *

root = Tk()
canvas = Canvas(root)
canvas.pack()
time = 60


def tick():
    # You have to clear the canvas each time the clock updates
    # (otherwise it writes on top of the old time).  Since the
    # time is the only thing in the canvas, delete(ALL) works
    # perfectly (if it wasn't however, you can delete the id
    # that goes with the clock).
    canvas.delete(ALL)
    # I have to declare time as a global because I'm not using
    # a class (otherwise, I could do something like self.time -= 1)
    global time
    time -= 1
    # You can place the time wherever in the canvas
    # (I chose 10,10 for the example)
    canvas.create_text(10, 10, text=time)
    if time == 0:
        do_something()
    else:
        canvas.after(1000, tick)


canvas.after(1, tick)
root.mainloop()


from tkinter import *
from random import randint


class Ball:
    def __init__(self, canvas, x1, y1, x2, y2):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        self.canvas = canvas
        self.ball = canvas.create_oval(self.x1, self.y1, self.x2, self.y2, fill="red")

    def move_ball(self):
        deltax = randint(0, 5)
        deltay = randint(0, 5)
        self.canvas.move(self.ball, deltax, deltay)
        self.canvas.after(50, self.move_ball)


# initialize root Window and canvas
root = Tk()
root.title("Balls")
root.resizable(False, False)
canvas = Canvas(root, width=300, height=300)
canvas.pack()

# create two ball objects and animate them
ball1 = Ball(canvas, 10, 10, 30, 30)
ball2 = Ball(canvas, 60, 60, 80, 80)

ball1.move_ball()
ball2.move_ball()

root.mainloop()
"""
