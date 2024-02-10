They moved the setting for filter on texture to the texture section on the node instead of in the import tab. You can also set in the project settings. Project Settings > General > Rendering > Textures > Canvas Textures > Set to 'Nearest'. [Thanks to this video.](https://www.youtube.com/watch?v=C-4V8q70qK8)

Trying to figure out how to bounce the ball at different angles was an interesting question. I wound up googling it and saw an answer in a different language that involved sine and cosine. I decided to click of and try to figure it out myself from that hint. So, I got the good ole unit circle out. I created a relative position of the collision, then moved that to a 0 to 1 scale and then used the cos as the y component. Now that I think about it, it would have been cleaner to just multiply by 90 instead on a -1 to 1 scale because then my y component would have been sine as one would expect. Oh well.

Woofenator made a [great devlog](https://foulleaf.dev/gamedev/2023/03/03/game-1-clong.html) that was listed in the challenge listing. Their approach to setting the ball angle was interesting and different from what I did. Simpler too.

[The 20 Games Challenge is here](https://20_games_challenge.gitlab.io/challenge/#1)

[The Game is here](https://theminesareshakin.itch.io/ping)

[The Source Code is here](https://github.com/jakemeinershagen/ping)
