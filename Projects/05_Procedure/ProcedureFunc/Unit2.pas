unit Unit2;

interface

var
  GlobalStr: string;
  GlobalStr2: string;

implementation

function PublicFunc: string;
begin
  Result := '공용 함수';
end;

// 선언(X) = 해당 유닛에서만 사용 가능
function PrivateFunc: string;
begin
  Result := '내부 함수';
end;

function PublicFunc2: string;
var
  S: string;
begin
  S := PrivateFunc;
end;
end.
