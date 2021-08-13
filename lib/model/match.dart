
import 'dart:convert';

Match matchFromJson(String str) => Match.fromJson(json.decode(str));

String matchToJson(Match data) => json.encode(data.toJson());

class Match {
    Match({
        this.status,
        this.response,
        this.etag,
        this.modified,
        this.datetime,
        this.apiVersion,
    });

    String status;
    Response response;
    String etag;
    DateTime modified;
    DateTime datetime;
    String apiVersion;

    factory Match.fromJson(Map<String, dynamic> json) => Match(
        status: json["status"],
        response: Response.fromJson(json["response"]),
        etag: json["etag"],
        modified: DateTime.parse(json["modified"]),
        datetime: DateTime.parse(json["datetime"]),
        apiVersion: json["api_version"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "response": response.toJson(),
        "etag": etag,
        "modified": modified.toIso8601String(),
        "datetime": datetime.toIso8601String(),
        "api_version": apiVersion,
    };
}

class Response {
    Response({
        this.items,
        this.totalItems,
        this.totalPages,
    });

    List<Item> items;
    int totalItems;
    int totalPages;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        totalItems: json["total_items"],
        totalPages: json["total_pages"],
    );

    Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "total_items": totalItems,
        "total_pages": totalPages,
    };
}

class Item {
    Item({
        this.matchId,
        this.title,
        this.shortTitle,
        this.subtitle,
        this.format,
        this.formatStr,
        this.status,
        this.statusStr,
        this.statusNote,
        this.verified,
        this.preSquad,
        this.oddsAvailable,
        this.gameState,
        this.gameStateStr,
        this.domestic,
        this.competition,
        this.teama,
        this.teamb,
        this.dateStart,
        this.dateEnd,
        this.timestampStart,
        this.timestampEnd,
        this.venue,
        this.umpires,
        this.referee,
        this.equation,
        this.live,
        this.result,
        this.resultType,
        this.winMargin,
        this.winningTeamId,
        this.commentary,
        this.wagon,
        this.latestInningNumber,
        this.toss,
    });

    int matchId;
    String title;
    String shortTitle;
    String subtitle;
    int format;
    String formatStr;
    int status;
    String statusStr;
    String statusNote;
    String verified;
    String preSquad;
    String oddsAvailable;
    int gameState;
    String gameStateStr;
    String domestic;
    Competition competition;
    Teama teama;
    Teamb teamb;
    DateTime dateStart;
    DateTime dateEnd;
    int timestampStart;
    int timestampEnd;
    Venue venue;
    String umpires;
    String referee;
    String equation;
    String live;
    String result;
    String resultType;
    String winMargin;
    int winningTeamId;
    int commentary;
    int wagon;
    int latestInningNumber;
    Toss toss;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        matchId: json["match_id"],
        title: json["title"],
        shortTitle: json["short_title"],
        subtitle: json["subtitle"],
        format: json["format"],
        formatStr: json["format_str"],
        status: json["status"],
        statusStr: json["status_str"],
        statusNote: json["status_note"],
        verified: json["verified"],
        preSquad: json["pre_squad"],
        oddsAvailable: json["odds_available"],
        gameState: json["game_state"],
        gameStateStr: json["game_state_str"],
        domestic: json["domestic"],
        competition: Competition.fromJson(json["competition"]),
        teama: Teama.fromJson(json["teama"]),
        teamb: Teamb.fromJson(json["teamb"]),
        dateStart: DateTime.parse(json["date_start"]),
        dateEnd: DateTime.parse(json["date_end"]),
        timestampStart: json["timestamp_start"],
        timestampEnd: json["timestamp_end"],
        venue: Venue.fromJson(json["venue"]),
        umpires: json["umpires"],
        referee: json["referee"],
        equation: json["equation"],
        live: json["live"],
        result: json["result"],
        resultType: json["result_type"],
        winMargin: json["win_margin"],
        winningTeamId: json["winning_team_id"],
        commentary: json["commentary"],
        wagon: json["wagon"],
        latestInningNumber: json["latest_inning_number"],
        toss: Toss.fromJson(json["toss"]),
    );

    Map<String, dynamic> toJson() => {
        "match_id": matchId,
        "title": title,
        "short_title": shortTitle,
        "subtitle": subtitle,
        "format": format,
        "format_str": formatStr,
        "status": status,
        "status_str": statusStr,
        "status_note": statusNote,
        "verified": verified,
        "pre_squad": preSquad,
        "odds_available": oddsAvailable,
        "game_state": gameState,
        "game_state_str": gameStateStr,
        "domestic": domestic,
        "competition": competition.toJson(),
        "teama": teama.toJson(),
        "teamb": teamb.toJson(),
        "date_start": dateStart.toIso8601String(),
        "date_end": dateEnd.toIso8601String(),
        "timestamp_start": timestampStart,
        "timestamp_end": timestampEnd,
        "venue": venue.toJson(),
        "umpires": umpires,
        "referee": referee,
        "equation": equation,
        "live": live,
        "result": result,
        "result_type": resultType,
        "win_margin": winMargin,
        "winning_team_id": winningTeamId,
        "commentary": commentary,
        "wagon": wagon,
        "latest_inning_number": latestInningNumber,
        "toss": toss.toJson(),
    };
}

class Competition {
    Competition({
        this.cid,
        this.title,
        this.abbr,
        this.type,
        this.category,
        this.matchFormat,
        this.status,
        this.season,
        this.datestart,
        this.dateend,
        this.totalMatches,
        this.totalRounds,
        this.totalTeams,
        this.country,
    });

    int cid;
    String title;
    String abbr;
    String type;
    String category;
    String matchFormat;
    String status;
    String season;
    DateTime datestart;
    DateTime dateend;
    String totalMatches;
    String totalRounds;
    String totalTeams;
    String country;

    factory Competition.fromJson(Map<String, dynamic> json) => Competition(
        cid: json["cid"],
        title: json["title"],
        abbr: json["abbr"],
        type: json["type"],
        category: json["category"],
        matchFormat: json["match_format"],
        status: json["status"],
        season: json["season"],
        datestart: DateTime.parse(json["datestart"]),
        dateend: DateTime.parse(json["dateend"]),
        totalMatches: json["total_matches"],
        totalRounds: json["total_rounds"],
        totalTeams: json["total_teams"],
        country: json["country"],
    );

    Map<String, dynamic> toJson() => {
        "cid": cid,
        "title": title,
        "abbr": abbr,
        "type": type,
        "category": category,
        "match_format": matchFormat,
        "status": status,
        "season": season,
        "datestart": "${datestart.year.toString().padLeft(4, '0')}-${datestart.month.toString().padLeft(2, '0')}-${datestart.day.toString().padLeft(2, '0')}",
        "dateend": "${dateend.year.toString().padLeft(4, '0')}-${dateend.month.toString().padLeft(2, '0')}-${dateend.day.toString().padLeft(2, '0')}",
        "total_matches": totalMatches,
        "total_rounds": totalRounds,
        "total_teams": totalTeams,
        "country": country,
    };
}

class Teama {
    Teama({
        this.teamId,
        this.name,
        this.shortName,
        this.logoUrl,
        this.scoresFull,
        this.scores,
        this.overs,
    });

    int teamId;
    String name;
    String shortName;
    String logoUrl;
    String scoresFull;
    String scores;
    String overs;

    factory Teama.fromJson(Map<String, dynamic> json) => Teama(
        teamId: json["team_id"],
        name: json["name"],
        shortName: json["short_name"],
        logoUrl: json["logo_url"],
        scoresFull: json["scores_full"],
        scores: json["scores"],
        overs: json["overs"],
    );

    Map<String, dynamic> toJson() => {
        "team_id": teamId,
        "name": name,
        "short_name": shortName,
        "logo_url": logoUrl,
        "scores_full": scoresFull,
        "scores": scores,
        "overs": overs,
    };
}

class Teamb {
    Teamb({
        this.teamId,
        this.name,
        this.shortName,
        this.logoUrl,
        this.scoresFull,
        this.scores,
        this.overs,
    });

    int teamId;
    String name;
    String shortName;
    String logoUrl;
    String scoresFull;
    String scores;
    String overs;

    factory Teamb.fromJson(Map<String, dynamic> json) => Teamb(
        teamId: json["team_id"],
        name: json["name"],
        shortName: json["short_name"],
        logoUrl: json["logo_url"],
        scoresFull: json["scores_full"],
        scores: json["scores"],
        overs: json["overs"],
    );

    Map<String, dynamic> toJson() => {
        "team_id": teamId,
        "name": name,
        "short_name": shortName,
        "logo_url": logoUrl,
        "scores_full": scoresFull,
        "scores": scores,
        "overs": overs,
    };
}

class Toss {
    Toss({
        this.text,
        this.winner,
        this.decision,
    });

    String text;
    int winner;
    int decision;

    factory Toss.fromJson(Map<String, dynamic> json) => Toss(
        text: json["text"],
        winner: json["winner"],
        decision: json["decision"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "winner": winner,
        "decision": decision,
    };
}

class Venue {
    Venue({
        this.venueId,
        this.name,
        this.location,
        this.timezone,
    });

    String venueId;
    String name;
    String location;
    String timezone;

    factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        venueId: json["venue_id"],
        name: json["name"],
        location: json["location"],
        timezone: json["timezone"],
    );

    Map<String, dynamic> toJson() => {
        "venue_id": venueId,
        "name": name,
        "location": location,
        "timezone": timezone,
    };
}
