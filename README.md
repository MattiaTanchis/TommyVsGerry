
# TommyVsGerry Problem

## Game Explanation

The game in question, invented by us, although inspired by some games found online, tells the story of a mouse (Tom) whose goal is to reach and eat his much-desired piece of cheese. To do so, he must make his way through a grid, trying to reach his destination. There is only one inconvenience. Inside the grid, there will be obstacles—cats.

## Game Rules

The game has the following rules:
- Number of mice = 1 (Gerry).
- Number of cats = player's choice.
- Two destinations to reach: one represents the cheese to be taken, and the other the mouse's burrow.
- The mouse occupies a single grid cell.
- Cats occupy two grid cells.
- The mouse can move horizontally or vertically.
- If the mouse reaches the destination, the game will end with a victory.

## Game Version 1

In the game version, it essentially consists of a Path Planning. In fact, the grid, of user-defined size, is initialized by placing, also at the user's discretion, the mouse (Gerry) and n cats (where n is a reasonable number relative to the chosen grid size). Once these elements are positioned, it is necessary to define where Gerry must go to get the cheese and subsequently where the burrow is located, representing Gerry's final destination. Once reached, the game concludes. In this version, the cats have a static position, so the planner's task is to identify the path to reach the two destinations sequentially.

## Game Version 2

The second version of the game has a substantial difference compared to the first version. To make everything more dynamic, we decided to introduce the possibility of also moving the cats within the grid, i.e., to relocate them to make space for the mouse. In fact, we might find ourselves in a situation where the mouse is trapped between the cats and would have no way to avoid them.

The objective of the game remains the same, of course—to reach the cheese and bring it to a safe place. In this version, what the planner must do is still find the path to reach the destinations sequentially, but additionally, they will have to move the cats vertically or horizontally depending on how they are positioned, to help Gerry reach the destination.

Regarding the movement of the cats, an example of possible movements is proposed:
- Vertical movement: The upward or downward movement of the cat will only be possible if the cat is positioned vertically. This will be true when the coordinates are of the form (Xm Yn1), (Xm Yn2). Since the cat occupies two positions, two pairs of coordinates need to be specified. Vertical movement will only be possible if the same X is present, and the Y varies in the data pair.
- Horizontal movement: The left or right movement of the cat will only be possible if the cat is positioned horizontally. This will be true when the coordinates are of the form (Xn1, Ym) (Xn2, Ym). Since the cat occupies two positions, two pairs of coordinates need to be specified. Horizontal movement will only be possible if the same Y is present, and the X varies in the data pair.

## Project Usage

To use and test our project with a planner of your choice (which uses PDDL as its language), it is necessary to run the following command from the terminal: "git clone https://github.com/MattiaTanchis/TommyVsGerry.git" or simply download the zip file from my repository. This way, the git project will be cloned to the desired destination, and you can use the domains of either v1 or v2 with their respective instances.

Additionally, you can also have fun creating your instances, following the examples of problems we have proposed, making sure to use the PDDL language, functions, objects, and predicates that we have developed correctly.

