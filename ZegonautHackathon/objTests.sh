obj='objMask.yy\|objGlobals.yy\|objEarthling.yy\|objSplashLogo.yy\|objRocket.yy'
tes=$(grep -c $obj ZegonautHackathon.yyp)
if $tes -eq 5
then
        echo 'true'
fi
