///music_get_room_bgm()

switch(room) {
    case rIntro:
    case rTitle:
    case rMenu:
    case rOptions:
    case rSample:
    case rSampleTriggers:
        return "title_menu";//"guy_rock";

    case rSampleBoss:
        return "megaman";

    case rChokochoko: case rGGM: case rScoreAttack: case rConquerBlowGame:
    case rSalt: case rPlus: case rEnjoyTheGame: case rSecondChallenger:
    case rMiddle: case rFangame:
        return "stage1";

    case rTribute: case rBestGuy: case rDarkBlue:
    case rFortressReturn: case rWinterVacation: case rMysteriousHouse:
    case rParty: case rExperience: case rYellowStar:
    case rGraduateFromDT:
        return "stage2";

    case rGreeeen: case rRunTheTerminal: case rMagicGirl:
    case rGreenMoon: case rYassan: case rGuy: case rRukimin:
    case rTimeMachine: case rHeavenTrap2: case r500:
        return "stage3";

    case rSeeTheMoon: case rCQ: case rCoolGuy:
    case rSkyclad: case rBucho: case rKillTheGuy:
    case rHeavenTrap1: case rPlayWHG: case rGB:
    case rPhantom: case rSkycladTroll:
        return "stage4";

    case rBoss4:
        return "boss4";

    case rPYF: case rSadist: case rBoshy: case rGR:
        return "stage5";

    case rBruteOfAMan:
        return "stage5b";

    case rBoss5:
        return "boss5";

    case rFinalBossA: case rFinalBossSalt: case rFinalBossDarkBlue:
    case rFinalBossB: case rFinalBossRTT: case rFinalBossCQ:
    case rFinalBossC:
        return "final_boss";

    case rFinalBossFalling:
        return "final_boss_fall";

    case rEnding:
        return "ending";

    case rPortalRoom:
        return "portalroom";

    case rReleaseDate:
        return "release_date";

    case rTeaser:
        return "teaser";

    default:
        return "";
}
