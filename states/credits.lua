return {
    init = function(self)
        self.credits = [[[ DEVELOPMENT ]
ry00001 - Code, graphics
Oshisaure - Technical help
#spyros-dev-lab - Technical help



[ ASSETS ]
GlitchyPSI - Logo
Penguin - Mino skin
Share Tech Mono - Font



[ SPECIAL THANKS ]
Oshisaure
0xFC963F18DC21
Akari
Doremy
Everyone who has playtested
And you




Powered by Love2D
(C) Plumino Team, 2019]]

        self.colours = {
            {1, {1, 0.2, 0.2}},
            {8, {1, 0.2, 0.2}},
            {15, {1, 0.2, 0.2}},
            {26, {0, 0.4, 0.4}},
            {27, {0, 0.4, 0.4}}
        }

        self.lines = {}
        for s in self.credits:gmatch("([^\n]*)\n?") do
            table.insert(self.lines, s)
        end

        self.font = game.font.med
        self.x = window.h+20
        self.speed = 1
    end,
    update = function(self)
        self.x = self.x - self.speed

        if self.x < -((self.font:getHeight(self.credits)*(#self.lines+3))-20) then
            game:switchState("title")
        end
    end,
    draw = function(self)
        love.graphics.setFont(self.font)
        for i, j in ipairs(self.lines) do
            love.graphics.print(j, (window.w/2)-(self.font:getWidth(j)/2), self.x+(i*self.font:getHeight(i)))
        end
    end
}