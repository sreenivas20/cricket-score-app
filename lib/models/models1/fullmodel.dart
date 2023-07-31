// To parse this JSON data, do
//
//     final cricket = cricketFromJson(jsonString);

import 'dart:convert';

Cricket cricketFromJson(String str) => Cricket.fromJson(json.decode(str));

String cricketToJson(Cricket data) => json.encode(data.toJson());

class Cricket {
    String status;
    Response response;
    String etag;
    DateTime modified;
    DateTime datetime;
    String apiVersion;

    Cricket({
        required this.status,
        required this.response,
        required this.etag,
        required this.modified,
        required this.datetime,
        required this.apiVersion,
    });

    factory Cricket.fromJson(Map<String, dynamic> json) => Cricket(
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
    List<Inning> innings;
    List<Team> teams;
    List<Player> players;

    Response({
        required this.innings,
        required this.teams,
        required this.players,
    });

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        innings: List<Inning>.from(json["innings"].map((x) => Inning.fromJson(x))),
        teams: List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
        players: List<Player>.from(json["players"].map((x) => Player.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "innings": List<dynamic>.from(innings.map((x) => x.toJson())),
        "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
        "players": List<dynamic>.from(players.map((x) => x.toJson())),
    };
}

class Inning {
    int inningId;
    int number;
    String name;
    int runs;
    String overs;
    int wickets;
    int status;
    int result;
    int battingTeamId;
    int fieldingTeamId;
    List<Fow> fows;
    Statistics statistics;

    Inning({
        required this.inningId,
        required this.number,
        required this.name,
        required this.runs,
        required this.overs,
        required this.wickets,
        required this.status,
        required this.result,
        required this.battingTeamId,
        required this.fieldingTeamId,
        required this.fows,
        required this.statistics,
    });

    factory Inning.fromJson(Map<String, dynamic> json) => Inning(
        inningId: json["inning_id"],
        number: json["number"],
        name: json["name"],
        runs: json["runs"],
        overs: json["overs"],
        wickets: json["wickets"],
        status: json["status"],
        result: json["result"],
        battingTeamId: json["batting_team_id"],
        fieldingTeamId: json["fielding_team_id"],
        fows: List<Fow>.from(json["fows"].map((x) => Fow.fromJson(x))),
        statistics: Statistics.fromJson(json["statistics"]),
    );

    Map<String, dynamic> toJson() => {
        "inning_id": inningId,
        "number": number,
        "name": name,
        "runs": runs,
        "overs": overs,
        "wickets": wickets,
        "status": status,
        "result": result,
        "batting_team_id": battingTeamId,
        "fielding_team_id": fieldingTeamId,
        "fows": List<dynamic>.from(fows.map((x) => x.toJson())),
        "statistics": statistics.toJson(),
    };
}

class Fow {
    int batsmanId;
    int runs;
    int ballsFaced;
    String howOut;
    int scoreAtDismissal;
    double oversAtDismissal;
    int order;

    Fow({
        required this.batsmanId,
        required this.runs,
        required this.ballsFaced,
        required this.howOut,
        required this.scoreAtDismissal,
        required this.oversAtDismissal,
        required this.order,
    });

    factory Fow.fromJson(Map<String, dynamic> json) => Fow(
        batsmanId: json["batsman_id"],
        runs: json["runs"],
        ballsFaced: json["balls_faced"],
        howOut: json["how_out"],
        scoreAtDismissal: json["score_at_dismissal"],
        oversAtDismissal: json["overs_at_dismissal"]?.toDouble(),
        order: json["order"],
    );

    Map<String, dynamic> toJson() => {
        "batsman_id": batsmanId,
        "runs": runs,
        "balls_faced": ballsFaced,
        "how_out": howOut,
        "score_at_dismissal": scoreAtDismissal,
        "overs_at_dismissal": oversAtDismissal,
        "order": order,
    };
}

class Statistics {
    List<Manhattan> manhattan;
    List<Manhattan> worm;
    List<Runrate> runrates;
    List<Partnership> partnership;
    List<Extra> runtypes;
    List<Extra> wickets;
    List<P2P> p2P;
    List<Extra> extras;

    Statistics({
        required this.manhattan,
        required this.worm,
        required this.runrates,
        required this.partnership,
        required this.runtypes,
        required this.wickets,
        required this.p2P,
        required this.extras,
    });

    factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
        manhattan: List<Manhattan>.from(json["manhattan"].map((x) => Manhattan.fromJson(x))),
        worm: List<Manhattan>.from(json["worm"].map((x) => Manhattan.fromJson(x))),
        runrates: List<Runrate>.from(json["runrates"].map((x) => Runrate.fromJson(x))),
        partnership: List<Partnership>.from(json["partnership"].map((x) => Partnership.fromJson(x))),
        runtypes: List<Extra>.from(json["runtypes"].map((x) => Extra.fromJson(x))),
        wickets: List<Extra>.from(json["wickets"].map((x) => Extra.fromJson(x))),
        p2P: List<P2P>.from(json["p2p"].map((x) => P2P.fromJson(x))),
        extras: List<Extra>.from(json["extras"].map((x) => Extra.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "manhattan": List<dynamic>.from(manhattan.map((x) => x.toJson())),
        "worm": List<dynamic>.from(worm.map((x) => x.toJson())),
        "runrates": List<dynamic>.from(runrates.map((x) => x.toJson())),
        "partnership": List<dynamic>.from(partnership.map((x) => x.toJson())),
        "runtypes": List<dynamic>.from(runtypes.map((x) => x.toJson())),
        "wickets": List<dynamic>.from(wickets.map((x) => x.toJson())),
        "p2p": List<dynamic>.from(p2P.map((x) => x.toJson())),
        "extras": List<dynamic>.from(extras.map((x) => x.toJson())),
    };
}

class Extra {
    String key;
    String name;
    int value;

    Extra({
        required this.key,
        required this.name,
        required this.value,
    });

    factory Extra.fromJson(Map<String, dynamic> json) => Extra(
        key: json["key"],
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "value": value,
    };
}

class Manhattan {
    int over;
    int runs;

    Manhattan({
        required this.over,
        required this.runs,
    });

    factory Manhattan.fromJson(Map<String, dynamic> json) => Manhattan(
        over: json["over"],
        runs: json["runs"],
    );

    Map<String, dynamic> toJson() => {
        "over": over,
        "runs": runs,
    };
}

class P2P {
    String batsmanId;
    String bowlerId;
    String balls;
    String runs;
    String run0;
    String run1;
    String run2;
    String run3;
    String run4;
    String run5;
    String run6;
    String run6P;

    P2P({
        required this.batsmanId,
        required this.bowlerId,
        required this.balls,
        required this.runs,
        required this.run0,
        required this.run1,
        required this.run2,
        required this.run3,
        required this.run4,
        required this.run5,
        required this.run6,
        required this.run6P,
    });

    factory P2P.fromJson(Map<String, dynamic> json) => P2P(
        batsmanId: json["batsman_id"],
        bowlerId: json["bowler_id"],
        balls: json["balls"],
        runs: json["runs"],
        run0: json["run0"],
        run1: json["run1"],
        run2: json["run2"],
        run3: json["run3"],
        run4: json["run4"],
        run5: json["run5"],
        run6: json["run6"],
        run6P: json["run6p"],
    );

    Map<String, dynamic> toJson() => {
        "batsman_id": batsmanId,
        "bowler_id": bowlerId,
        "balls": balls,
        "runs": runs,
        "run0": run0,
        "run1": run1,
        "run2": run2,
        "run3": run3,
        "run4": run4,
        "run5": run5,
        "run6": run6,
        "run6p": run6P,
    };
}

class Partnership {
    List<Batsman> batsmen;
    int ballsFaced;
    int runs;
    int order;

    Partnership({
        required this.batsmen,
        required this.ballsFaced,
        required this.runs,
        required this.order,
    });

    factory Partnership.fromJson(Map<String, dynamic> json) => Partnership(
        batsmen: List<Batsman>.from(json["batsmen"].map((x) => Batsman.fromJson(x))),
        ballsFaced: json["balls_faced"],
        runs: json["runs"],
        order: json["order"],
    );

    Map<String, dynamic> toJson() => {
        "batsmen": List<dynamic>.from(batsmen.map((x) => x.toJson())),
        "balls_faced": ballsFaced,
        "runs": runs,
        "order": order,
    };
}

class Batsman {
    int batsmanId;
    int ballsFaced;
    int runs;
    int fours;
    int sixes;

    Batsman({
        required this.batsmanId,
        required this.ballsFaced,
        required this.runs,
        required this.fours,
        required this.sixes,
    });

    factory Batsman.fromJson(Map<String, dynamic> json) => Batsman(
        batsmanId: json["batsman_id"],
        ballsFaced: json["balls_faced"],
        runs: json["runs"],
        fours: json["fours"],
        sixes: json["sixes"],
    );

    Map<String, dynamic> toJson() => {
        "batsman_id": batsmanId,
        "balls_faced": ballsFaced,
        "runs": runs,
        "fours": fours,
        "sixes": sixes,
    };
}

class Runrate {
    int over;
    double runrate;

    Runrate({
        required this.over,
        required this.runrate,
    });

    factory Runrate.fromJson(Map<String, dynamic> json) => Runrate(
        over: json["over"],
        runrate: json["runrate"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "over": over,
        "runrate": runrate,
    };
}

class Player {
    int playerId;
    String name;
    String shortName;
    CountryIso countryIso;
    String logoUrl;

    Player({
        required this.playerId,
        required this.name,
        required this.shortName,
        required this.countryIso,
        required this.logoUrl,
    });

    factory Player.fromJson(Map<String, dynamic> json) => Player(
        playerId: json["player_id"],
        name: json["name"],
        shortName: json["short_name"],
        countryIso: countryIsoValues.map[json["country_iso"]]!,
        logoUrl: json["logo_url"],
    );

    Map<String, dynamic> toJson() => {
        "player_id": playerId,
        "name": name,
        "short_name": shortName,
        "country_iso": countryIsoValues.reverse[countryIso],
        "logo_url": logoUrl,
    };
}

enum CountryIso {
    AU,
    IN
}

final countryIsoValues = EnumValues({
    "au": CountryIso.AU,
    "in": CountryIso.IN
});

class Team {
    int teamId;
    String name;
    String shortName;
    CountryIso countryIso;
    String type;
    String logoUrl;

    Team({
        required this.teamId,
        required this.name,
        required this.shortName,
        required this.countryIso,
        required this.type,
        required this.logoUrl,
    });

    factory Team.fromJson(Map<String, dynamic> json) => Team(
        teamId: json["team_id"],
        name: json["name"],
        shortName: json["short_name"],
        countryIso: countryIsoValues.map[json["country_iso"]]!,
        type: json["type"],
        logoUrl: json["logo_url"],
    );

    Map<String, dynamic> toJson() => {
        "team_id": teamId,
        "name": name,
        "short_name": shortName,
        "country_iso": countryIsoValues.reverse[countryIso],
        "type": type,
        "logo_url": logoUrl,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
