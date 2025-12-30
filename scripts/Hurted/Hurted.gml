function Hurted(Attacker, KBForce, KBDur, IFramesDur){
    KBDir   = point_direction(Attacker.x, Attacker.y, x, y);
    KBSpeed = KBForce;
    KBTimer = KBDur;
    IFrames = true;
    IFramesTimer = IFramesDur
    FlashTimer = 0;
}