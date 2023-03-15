class Driver {
    Driver({
        required this.status,
        required this.driverList,
    });

    bool status;
    List<Driver_List> driverList;

    factory Driver.fromJson(Map<String, dynamic> json) => Driver(
        status: json["status"],
        driverList: List<Driver_List>.from(json["driver_list"].map((x) => Driver_List.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "driver_list": List<dynamic>.from(driverList.map((x) => x.toJson())),
    };
}

class Driver_List {
    Driver_List({
        required this.id,
        this.name,
        this.mobile,
        this.licenseNo,
    });

    int id;
    String? name;
    String? mobile;
    String? licenseNo;

    factory Driver_List.fromJson(Map<String, dynamic> json) => Driver_List(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        licenseNo: json["license_no"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "license_no": licenseNo,
    };
}
