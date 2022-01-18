%Hit graphics
%(x,y) (950, 850)

var picPoints : array 0 .. 3 of int
for i : 0 .. 3
    picPoints (i) := Pic.FileNew (intstr (i) + "00.jpg")
end for

class Hit

    import picPoints
    export Show, Hide, Points
    var iValue : int

    procedure Points (opValue : int)
	iValue := opValue
    end Points

    procedure Show
	Pic.Draw (picPoints (iValue), 422, 850, picCopy)
    end Show

    procedure Hide
	drawfillbox (822, 850, 822 + 256, 850 + 72, black)
    end Hide

end Hit

type HitClass : pointer to Hit

procedure ConstructHit (var opH : HitClass)

    new Hit, opH
    opH -> Points (1)

end ConstructHit

procedure DestructHit (var opH : HitClass)
    free opH
end DestructHit
