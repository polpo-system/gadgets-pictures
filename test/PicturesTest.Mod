MODULE PicturesTest;  (** PicturesTest.Run: the sample pictures opened; needs the desktop's display *)

IMPORT Pictures, Out := out;

VAR fails, checks: LONGINT;

PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN
  INC(checks);
  IF ~ok THEN INC(fails); Out.String("FAIL "); Out.String(what); Out.Ln END
END Check;

PROCEDURE Pict(name: ARRAY OF CHAR);
VAR P: Pictures.Picture;
BEGIN
  NEW(P); Pictures.Open(P, name, TRUE); Check(name, (P.width > 0) & (P.height > 0))
END Pict;

PROCEDURE Run*;
BEGIN
  fails := 0; checks := 0;
  Pict("Clown.Pict"); Pict("Grapes.Pict"); Pict("Bart.Pict");
  Out.String("PicturesTest: "); Out.Int(checks, 0); Out.String(" checks, "); Out.Int(fails, 0); Out.String(" failed"); Out.Ln
END Run;

END PicturesTest.
