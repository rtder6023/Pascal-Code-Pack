unit Unit2;

interface

var
  GlobalStr: string;
  GlobalStr2: string;

implementation

function PublicFunc: string;
begin
  Result := '���� �Լ�';
end;

// ����(X) = �ش� ���ֿ����� ��� ����
function PrivateFunc: string;
begin
  Result := '���� �Լ�';
end;

function PublicFunc2: string;
var
  S: string;
begin
  S := PrivateFunc;
end;
end.
