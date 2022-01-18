%Judgement line class
%y= 74 is the absolute


class Judgement

    export IsTouching, SetY, SetHeight
    var iY, iHeight : int

    procedure SetY (ipY : int)
	iY := ipY
    end SetY

    procedure SetHeight (ipHeight : int)
	iHeight := ipHeight
    end SetHeight

    function IsTouching (ipY : int) : boolean
	if ipY >= iY and ipY <= iY + iHeight then
	    result true
	else
	    result false
	end if
    end IsTouching


end Judgement

type JudgementClass : pointer to Judgement

procedure ConstructJudgement (var opJ : JudgementClass)

    new Judgement, opJ

    opJ -> SetY (10)
    opJ -> SetHeight (20)
end ConstructJudgement

procedure DestructJudgement (var opJ : JudgementClass)
    free opJ
end DestructJudgement

