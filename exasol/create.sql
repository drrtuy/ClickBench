OPEN SCHEMA test;
drop table hits;
CREATE TABLE hits
(
    WatchID BIGINT NOT NULL,
    UserID BIGINT NOT NULL,
    FUniqID BIGINT NOT NULL,
    ParamPrice BIGINT NOT NULL,
    RefererHash BIGINT NOT NULL,
    URLHash BIGINT NOT NULL,
    EventTime TIMESTAMP NOT NULL,
    ClientEventTime TIMESTAMP NOT NULL,
    LocalEventTime TIMESTAMP NOT NULL,
    EventDate Date NOT NULL,
    CounterID INTEGER NOT NULL,
    ClientIP INTEGER NOT NULL,
    RegionID INTEGER NOT NULL,
    RefererRegionID INTEGER NOT NULL,
    URLRegionID INTEGER NOT NULL,
    IPNetworkID INTEGER NOT NULL,
    SilverlightVersion3 INTEGER NOT NULL,
    CodeVersion INTEGER NOT NULL,
    HID INTEGER NOT NULL,
    RemoteIP INTEGER NOT NULL,
    WindowName INTEGER NOT NULL,
    OpenerName INTEGER NOT NULL,
    SendTiming INTEGER NOT NULL,
    DNSTiming INTEGER NOT NULL,
    ConnectTiming INTEGER NOT NULL,
    ResponseStartTiming INTEGER NOT NULL,
    ResponseEndTiming INTEGER NOT NULL,
    FetchTiming INTEGER NOT NULL,
    CLID INTEGER NOT NULL,
    JavaEnable SMALLINT NOT NULL,
    GoodEvent SMALLINT NOT NULL,
    CounterClass SMALLINT NOT NULL,
    OS SMALLINT NOT NULL,
    UserAgent SMALLINT NOT NULL,
    IsRefresh SMALLINT NOT NULL,
    RefererCategoryID SMALLINT NOT NULL,
    URLCategoryID SMALLINT NOT NULL,
    ResolutionWidth SMALLINT NOT NULL,
    ResolutionHeight SMALLINT NOT NULL,
    ResolutionDepth SMALLINT NOT NULL,
    FlashMajor SMALLINT NOT NULL,
    FlashMinor SMALLINT NOT NULL,
    TraficSourceID SMALLINT NOT NULL,
    SearchEngineID SMALLINT NOT NULL,
    NetMajor SMALLINT NOT NULL,
    NetMinor SMALLINT NOT NULL,
    UserAgentMajor SMALLINT NOT NULL,
    CookieEnable SMALLINT NOT NULL,
    JavascriptEnable SMALLINT NOT NULL,
    IsMobile SMALLINT NOT NULL,
    MobilePhone SMALLINT NOT NULL,
    AdvEngineID SMALLINT NOT NULL,
    IsArtifical SMALLINT NOT NULL,
    WindowClientWidth SMALLINT NOT NULL,
    WindowClientHeight SMALLINT NOT NULL,
    ClientTimeZone SMALLINT NOT NULL,
    SilverlightVersion1 SMALLINT NOT NULL,
    SilverlightVersion2 SMALLINT NOT NULL,
    SilverlightVersion4 SMALLINT NOT NULL,
    IsLink SMALLINT NOT NULL,
    IsDownload SMALLINT NOT NULL,
    IsNotBounce SMALLINT NOT NULL,
    IsOldCounter SMALLINT NOT NULL,
    IsEvent SMALLINT NOT NULL,
    IsParameter SMALLINT NOT NULL,
    DontCountHits SMALLINT NOT NULL,
    WithHash SMALLINT NOT NULL,
    Age SMALLINT NOT NULL,
    Sex SMALLINT NOT NULL,
    Income SMALLINT NOT NULL,
    Interests SMALLINT NOT NULL,
    Robotness SMALLINT NOT NULL,
    HistoryLength SMALLINT NOT NULL,
    HTTPError SMALLINT NOT NULL,
    SocialSourceNetworkID SMALLINT NOT NULL,
    HasGCLID SMALLINT NOT NULL,
    ParamCurrencyID SMALLINT NOT NULL,
    Title VARCHAR(2048),
    URL VARCHAR(9192),
    Referer VARCHAR(4096),
    FlashMinor2 VARCHAR(2048),
    BrowserLanguage VARCHAR(2048),
    BrowserCountry VARCHAR(2048),
    SocialNetwork VARCHAR(2048),
    SocialAction VARCHAR(2048),
    MobilePhoneModel VARCHAR(2048),
    Params VARCHAR(2048),
    SearchPhrase VARCHAR(2048),
    PageCharset VARCHAR(2048),
    OriginalURL VARCHAR(9192),
    SocialSourcePage VARCHAR(2048),
    ParamOrderID VARCHAR(2048),
    ParamCurrency VARCHAR(2048),
    OpenstatServiceName VARCHAR(2048),
    OpenstatCampaignID VARCHAR(2048),
    OpenstatAdID VARCHAR(2048),
    OpenstatSourceID VARCHAR(2048),
    UTMSource VARCHAR(2048),
    UTMMedium VARCHAR(2048),
    UTMCampaign VARCHAR(2048),
    UTMContent VARCHAR(2048),
    UTMTerm VARCHAR(2048),
    FromTag VARCHAR(2048),
    UserAgentMinor VARCHAR(255),
    HitColor CHAR NOT NULL
);
