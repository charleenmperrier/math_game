1. Extract nouns for classes
  a) Players
  b) Game
  c) Question
  d) Score (just a method instead?)

2. Write thier roles
  a) who current player is? for asking the question
  b) the game loop, switches each loop for the other player.
  c) logic for the question ie the math, generate random num 1-20 and checks response 
  d) keeping track of both players score


2. Methods & State for each

  Players:
    state: which player (1 or 2) / name
    method: switching the player?

  Question: 
    state
      - answer from the question asked
    method
      - ask the question: use 'rand 1..20' ruby method to generate the question numbers
      - logic to check the question: num + num = their answer
      - answer wrong: false
      - answer right: true

  Game: 
    state
      - current player
      - current score

    methods
      - start: puts out inital message

      - update/new_turn: 
          changes from P1 to P2 
          asks the question (question class checks answer)
          updates the score?: puts the player scores

      - end: once a player hits 0 in their score, puts out 'end the game' message

  

  Score:
    state
      - current score for each player

    