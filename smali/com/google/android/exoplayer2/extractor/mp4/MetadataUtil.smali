###### Class com.google.android.exoplayer2.extractor.mp4.MetadataUtil (com.google.android.exoplayer2.extractor.mp4.MetadataUtil)
.class final Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final LANGUAGE_UNDEFINED:Ljava/lang/String; = "und"

.field private static final SHORT_TYPE_ALBUM:I

.field private static final SHORT_TYPE_ARTIST:I

.field private static final SHORT_TYPE_COMMENT:I

.field private static final SHORT_TYPE_COMPOSER_1:I

.field private static final SHORT_TYPE_COMPOSER_2:I

.field private static final SHORT_TYPE_ENCODER:I

.field private static final SHORT_TYPE_GENRE:I

.field private static final SHORT_TYPE_LYRICS:I

.field private static final SHORT_TYPE_NAME_1:I

.field private static final SHORT_TYPE_NAME_2:I

.field private static final SHORT_TYPE_YEAR:I

.field private static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I

.field private static final TYPE_COMPILATION:I

.field private static final TYPE_COVER_ART:I

.field private static final TYPE_DISK_NUMBER:I

.field private static final TYPE_GAPLESS_ALBUM:I

.field private static final TYPE_GENRE:I

.field private static final TYPE_GROUPING:I

.field private static final TYPE_INTERNAL:I

.field private static final TYPE_RATING:I

.field private static final TYPE_SORT_ALBUM:I

.field private static final TYPE_SORT_ALBUM_ARTIST:I

.field private static final TYPE_SORT_ARTIST:I

.field private static final TYPE_SORT_COMPOSER:I

.field private static final TYPE_SORT_TRACK_NAME:I

.field private static final TYPE_TEMPO:I

.field private static final TYPE_TRACK_NUMBER:I

.field private static final TYPE_TV_SHOW:I

.field private static final TYPE_TV_SORT_SHOW:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "nam"

    .line 35
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    const-string v0, "trk"

    .line 36
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    const-string v0, "cmt"

    .line 37
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    const-string v0, "day"

    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    const-string v0, "ART"

    .line 39
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    const-string v0, "too"

    .line 40
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    const-string v0, "alb"

    .line 41
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    const-string v0, "com"

    .line 42
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    const-string v0, "wrt"

    .line 43
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    const-string v0, "lyr"

    .line 44
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    const-string v0, "gen"

    .line 45
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    const-string v0, "covr"

    .line 48
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    const-string v0, "gnre"

    .line 49
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    const-string v0, "grp"

    .line 50
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    const-string v0, "disk"

    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    const-string v0, "trkn"

    .line 52
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    const-string v0, "tmpo"

    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    const-string v0, "cpil"

    .line 54
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    const-string v0, "aART"

    .line 55
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    const-string v0, "sonm"

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    const-string v0, "soal"

    .line 57
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    const-string v0, "soar"

    .line 58
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    const-string v0, "soaa"

    .line 59
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    const-string v0, "soco"

    .line 60
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    const-string v0, "rtng"

    .line 63
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    const-string v0, "pgap"

    .line 64
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    const-string v0, "sosn"

    .line 65
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    const-string v0, "tvsh"

    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    const-string v0, "----"

    .line 69
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    const/16 v0, 0x94

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Country"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Dance"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Disco"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Funk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Grunge"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Hip-Hop"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Jazz"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Metal"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "New Age"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Oldies"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Other"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Pop"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "R&B"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Rap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Reggae"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "Rock"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "Techno"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "Industrial"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Alternative"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Ska"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Death Metal"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Pranks"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Soundtrack"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Euro-Techno"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Ambient"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "Trip-Hop"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "Vocal"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "Jazz+Funk"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "Fusion"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "Trance"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "Classical"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "Instrumental"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "Acid"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "House"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "Game"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "Sound Clip"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "Gospel"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "Noise"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "AlternRock"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "Bass"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "Soul"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "Punk"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "Space"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "Meditative"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "Instrumental Pop"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "Instrumental Rock"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "Ethnic"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "Gothic"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "Darkwave"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "Techno-Industrial"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "Electronic"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "Pop-Folk"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "Eurodance"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "Dream"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "Southern Rock"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "Comedy"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "Cult"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "Gangsta"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "Top 40"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "Christian Rap"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "Pop/Funk"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "Jungle"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "Native American"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "Cabaret"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "New Wave"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "Psychadelic"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "Rave"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "Showtunes"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "Trailer"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "Lo-Fi"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "Tribal"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "Acid Punk"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "Acid Jazz"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "Polka"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "Retro"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "Musical"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "Rock & Roll"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "Hard Rock"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "Folk"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "Folk-Rock"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "National Folk"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "Swing"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "Fast Fusion"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "Bebob"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "Latin"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "Revival"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "Celtic"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "Bluegrass"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "Avantgarde"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "Gothic Rock"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "Progressive Rock"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "Psychedelic Rock"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "Symphonic Rock"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "Slow Rock"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "Big Band"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "Chorus"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "Easy Listening"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "Acoustic"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "Humour"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "Speech"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "Chanson"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "Opera"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "Chamber Music"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "Sonata"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "Symphony"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "Booty Bass"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "Primus"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "Porn Groove"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "Satire"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "Slow Jam"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "Club"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "Tango"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "Samba"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "Folklore"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "Ballad"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "Power Ballad"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "Rhythmic Soul"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "Freestyle"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "Duet"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "Punk Rock"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "Drum Solo"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "A capella"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "Euro-House"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "Dance Hall"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "Goa"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "Drum & Bass"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "Club-House"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "Hardcore"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "Terror"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "Indie"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "BritPop"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "Negerpunk"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "Polsk Punk"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "Beat"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "Christian Gangsta Rap"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "Heavy Metal"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "Black Metal"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "Crossover"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "Contemporary Christian"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "Christian Rock"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "Merengue"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "Salsa"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "Thrash Metal"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "Anime"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "Jpop"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "Synthpop"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .registers 5

    .line 198
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 200
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v2, :cond_1f

    const/16 p0, 0x8

    .line 201
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 202
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 203
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1f
    const-string p1, "MetadataUtil"

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse comment attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .registers 6

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 256
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 257
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_51

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 259
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1c

    const-string v2, "image/jpeg"

    goto :goto_24

    :cond_1c
    const/16 v2, 0xe

    if-ne v1, v2, :cond_23

    const-string v2, "image/png"

    goto :goto_24

    :cond_23
    move-object v2, v3

    :goto_24
    if-nez v2, :cond_3d

    const-string p0, "MetadataUtil"

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized cover art flags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3d
    const/4 v1, 0x4

    .line 265
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 266
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 267
    array-length v4, v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 268
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const/4 v1, 0x3

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_51
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse cover art attribute"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .registers 6

    .line 113
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_106

    const v3, 0xfffd

    if-ne v2, v3, :cond_1c

    goto/16 :goto_106

    .line 142
    :cond_1c
    :try_start_1c
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    if-ne v1, v2, :cond_28

    .line 143
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 144
    :cond_28
    :try_start_28
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    if-ne v1, v2, :cond_36

    const-string v2, "TPOS"

    .line 145
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 146
    :cond_36
    :try_start_36
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    if-ne v1, v2, :cond_44

    const-string v2, "TRCK"

    .line 147
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 148
    :cond_44
    :try_start_44
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_54

    const-string v2, "TBPM"

    .line 149
    invoke-static {v1, v2, p0, v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 150
    :cond_54
    :try_start_54
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    if-ne v1, v2, :cond_62

    const-string v2, "TCMP"

    .line 151
    invoke-static {v1, v2, p0, v4, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 152
    :cond_62
    :try_start_62
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    if-ne v1, v2, :cond_6e

    .line 153
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v1
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 154
    :cond_6e
    :try_start_6e
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    if-ne v1, v2, :cond_7c

    const-string v2, "TPE2"

    .line 155
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 156
    :cond_7c
    :try_start_7c
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    if-ne v1, v2, :cond_8a

    const-string v2, "TSOT"

    .line 157
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 158
    :cond_8a
    :try_start_8a
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    if-ne v1, v2, :cond_98

    const-string v2, "TSO2"

    .line 159
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 160
    :cond_98
    :try_start_98
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    if-ne v1, v2, :cond_a6

    const-string v2, "TSOA"

    .line 161
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 162
    :cond_a6
    :try_start_a6
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    if-ne v1, v2, :cond_b4

    const-string v2, "TSOP"

    .line 163
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 164
    :cond_b4
    :try_start_b4
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    if-ne v1, v2, :cond_c2

    const-string v2, "TSOC"

    .line 165
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 166
    :cond_c2
    :try_start_c2
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    if-ne v1, v2, :cond_d0

    const-string v2, "ITUNESADVISORY"

    .line 167
    invoke-static {v1, v2, p0, v3, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_cc
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 168
    :cond_d0
    :try_start_d0
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    if-ne v1, v2, :cond_de

    const-string v2, "ITUNESGAPLESS"

    .line 169
    invoke-static {v1, v2, p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_da
    .catchall {:try_start_d0 .. :try_end_da} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 170
    :cond_de
    :try_start_de
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    if-ne v1, v2, :cond_ec

    const-string v2, "TVSHOWSORT"

    .line 171
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_e8
    .catchall {:try_start_de .. :try_end_e8} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 172
    :cond_ec
    :try_start_ec
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    if-ne v1, v2, :cond_fa

    const-string v2, "TVSHOW"

    .line 173
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_f6
    .catchall {:try_start_ec .. :try_end_f6} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 174
    :cond_fa
    :try_start_fa
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    if-ne v1, v2, :cond_18c

    .line 175
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_102
    .catchall {:try_start_fa .. :try_end_102} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_106
    :goto_106
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 121
    :try_start_10a
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    if-ne v2, v3, :cond_116

    .line 122
    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v1
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 123
    :cond_116
    :try_start_116
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    if-eq v2, v3, :cond_1b5

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    if-ne v2, v3, :cond_120

    goto/16 :goto_1b5

    .line 125
    :cond_120
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    if-eq v2, v3, :cond_1ab

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    if-ne v2, v3, :cond_12a

    goto/16 :goto_1ab

    .line 127
    :cond_12a
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    if-ne v2, v3, :cond_138

    const-string v2, "TDRC"

    .line 128
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_134
    .catchall {:try_start_116 .. :try_end_134} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 129
    :cond_138
    :try_start_138
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    if-ne v2, v3, :cond_146

    const-string v2, "TPE1"

    .line 130
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_142
    .catchall {:try_start_138 .. :try_end_142} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 131
    :cond_146
    :try_start_146
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    if-ne v2, v3, :cond_154

    const-string v2, "TSSE"

    .line 132
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_150
    .catchall {:try_start_146 .. :try_end_150} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 133
    :cond_154
    :try_start_154
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    if-ne v2, v3, :cond_162

    const-string v2, "TALB"

    .line 134
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_15e
    .catchall {:try_start_154 .. :try_end_15e} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 135
    :cond_162
    :try_start_162
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    if-ne v2, v3, :cond_170

    const-string v2, "USLT"

    .line 136
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_16c
    .catchall {:try_start_162 .. :try_end_16c} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 137
    :cond_170
    :try_start_170
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    if-ne v2, v3, :cond_17e

    const-string v2, "TCON"

    .line 138
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_17a
    .catchall {:try_start_170 .. :try_end_17a} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 139
    :cond_17e
    :try_start_17e
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    if-ne v2, v3, :cond_18c

    const-string v2, "TIT1"

    .line 140
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_188
    .catchall {:try_start_17e .. :try_end_188} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_18c
    :try_start_18c
    const-string v2, "MetadataUtil"

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a6
    .catchall {:try_start_18c .. :try_end_1a6} :catchall_1bf

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1ab
    :goto_1ab
    :try_start_1ab
    const-string v2, "TCOM"

    .line 126
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1b1
    .catchall {:try_start_1ab .. :try_end_1b1} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1b5
    :goto_1b5
    :try_start_1b5
    const-string v2, "TIT2"

    .line 124
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1bb
    .catchall {:try_start_1b5 .. :try_end_1bb} :catchall_1bf

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :catchall_1bf
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v1
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 7

    .line 225
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 226
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 227
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4d

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4d

    const/16 v0, 0xa

    .line 228
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 229
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_4d

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    if-lez p2, :cond_47

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    :cond_47
    new-instance p2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_4d
    const-string p1, "MetadataUtil"

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse index/count attribute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static parseInternalAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 279
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, p1, :cond_3e

    .line 280
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 281
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    const/4 v9, 0x4

    .line 283
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 284
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v8, v9, :cond_27

    add-int/lit8 v7, v7, -0xc

    .line 285
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 286
    :cond_27
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_name:I

    if-ne v8, v9, :cond_32

    add-int/lit8 v7, v7, -0xc

    .line 287
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 289
    :cond_32
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v8, v9, :cond_38

    move v4, v6

    move v5, v7

    :cond_38
    add-int/lit8 v7, v7, -0xc

    .line 293
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6

    :cond_3e
    const-string p1, "com.apple.iTunes"

    .line 296
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "iTunSMPB"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    if-ne v4, v0, :cond_51

    goto :goto_66

    .line 300
    :cond_51
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, p1

    .line 302
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 303
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, v3, p0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_66
    :goto_66
    return-object v1
.end method

.method private static parseStandardGenreAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 4

    .line 244
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_13

    .line 245
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-gt p0, v1, :cond_13

    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    goto :goto_14

    :cond_13
    move-object p0, v0

    :goto_14
    if-eqz p0, :cond_1e

    .line 248
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1e
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    .line 250
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 7

    .line 186
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 187
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 188
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1e

    const/16 p0, 0x8

    .line 189
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 190
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance p2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1e
    const-string p1, "MetadataUtil"

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse text attribute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 5

    .line 211
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p2

    if-eqz p4, :cond_b

    const/4 p4, 0x1

    .line 213
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_b
    const/4 p4, 0x0

    if-ltz p2, :cond_26

    if-eqz p3, :cond_1a

    .line 216
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_1a
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string p3, "und"

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-object p0

    :cond_26
    const-string p1, "MetadataUtil"

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse uint8 attribute: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method

.method private static parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 3

    const/4 v0, 0x4

    .line 307
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 309
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v0, v1, :cond_16

    const/16 v0, 0x8

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_16
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse uint8 attribute value"

    .line 313
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method
