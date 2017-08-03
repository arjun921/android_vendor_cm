#!/bin/bash
# Build type chooser for the LegendROM
. $ANDROID_BUILD_TOP/vendor/cm/tools/colors
echo -e ${ylw}"\n\n ▼ Which build type do you want to choose?\n"${txtrst}
echo -e "";
echo -e ${blu}" 〉 1- Official "${txtrst}${red}"    ︱ Option for the only official device maintainers"${txtrst}
echo -e "";
echo -e ${blu}" 〉 2- Unofficial "${txtrst}${red}"  ︱ Option for the unofficial device builders"${txtrst}
echo -e "";
echo -e ${blu}" 〉 3- Nightly "${txtrst}${red}"     ︱ Option for the only official daily builders"${txtrst}
echo -e "";
echo -e ${blu}" 〉 4- Weekly "${txtrst}${red}"      ︱ Option for the only official weekly builders"${txtrst}
echo -e "";
echo -e ${blu}" 🕑  30/sec Time-out "${txtrst}${red}"︱ Default"${txtrst}
echo -e "";
echo -e ${cya}" ▼ Pick a number"${txtrst}
echo -e "";
$normal
read -t 30 askvariant
sleep 1
if [ "$askvariant" == "1" ]
then
echo -e "";
echo -e ${blu}" ▪ Building official variant "${txtrst}
export LR_BUILDTYPE=Official
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
echo -e ${blu}" ▪ Building unofficial variant "${txtrst}
export LR_BUILDTYPE=Unofficial
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "3" ]
then
echo -e "";
echo -e ${blu}" ▪ Building nightly variant "${txtrst}
export LR_BUILDTYPE=Nightly
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "4" ]
then
echo -e "";
echo -e ${blu}" ▪ Building weekly variant "${txtrst}
export LR_BUILDTYPE=Weekly
echo -e "";
echo -e "";
$normal
sleep 1
fi
