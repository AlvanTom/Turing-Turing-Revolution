%Arrow Picture
var picIDs : array 1 .. 4 of int
for i : 1 .. 4
    picIDs (i) := Pic.FileNew ("Arrow-" + intstr (i) + ".jpg")
end for

%Arrow Class
class Arrow

    import picIDs
    export Show, Hide, Move, ArrValue, SetX, SetY, GetY, GetX

    var iY, iX, iValue : int

    function GetY : int
	result iY
    end GetY

    function GetX : int
	result iX
    end GetX
    
    procedure SetX (ipX : int)
	iX := ipX
    end SetX
    procedure SetY (ipY : int)
	iY := ipY
    end SetY

    procedure ArrValue (opValue : int)
	iValue := opValue
    end ArrValue

    procedure Move
	iY := iY - 10
    end Move


    procedure Show
	Pic.Draw (picIDs (iValue), iX, iY, picCopy)
    end Show

    procedure Hide
	drawfillbox (iX, iY, iX + 128, iY + 128, black)
    end Hide


end Arrow

type ArrowClass : pointer to Arrow

procedure ConstructArrow (var opA : ArrowClass)

    new Arrow, opA
    opA -> SetX (810)
    opA -> SetY (950)
    opA -> ArrValue (1)

end ConstructArrow

procedure DestructArrow (var opA : ArrowClass)
    free opA
end DestructArrow
