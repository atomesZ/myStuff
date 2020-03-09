//fpc 3.0.0
program TP1Q3;

// FIXME-begin
procedure one(x, y: integer);
begin
    writeln('one');
end;

function two() : integer;
begin
    writeln('two');
    two := 0;
end;

function three() : integer;
begin
    writeln('three');
    three := 0;
end;
// FIXME-end

begin
    one(two(), three());
    writeln('Pascal!');
end.
