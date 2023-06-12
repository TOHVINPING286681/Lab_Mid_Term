class Items {
  String? itemId;
  String? userId;
  String? itemName;
  String? itemType;
  String? itemDesc;
  String? itemQty;
  String? itemLong;
  String? itemLat;

  String? itemState;
  String? itemLocality;
  String? itemDate;

  Items(
      {this.itemId,
      this.userId,
      this.itemName,
      this.itemType,
      this.itemDesc,
      this.itemQty,
      this.itemLong,
      this.itemLat,
      this.itemState,
      this.itemLocality,
      this.itemDate});

  Items.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    userId = json['user_id'];
    itemName = json['item_name'];
    itemType = json['item_type'];
    itemDesc = json['item_desc'];
    itemQty = json['item_qty'];
    itemLong = json['item_long'];
    itemLat = json['item_lat'];
    itemState = json['item_state'];
    itemLocality = json['item_locality'];
    itemDate = json['item_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['item_id'] = itemId;
    data['user_id'] = userId;
    data['item_name'] = itemName;
    data['item_type'] = itemType;
    data['item_desc'] = itemDesc;
    data['item_qty'] = itemQty;
    data['item_long'] = itemLong;
    data['item_lat'] = itemLat;
    data['item_state'] = itemState;
    data['item_locality'] = itemLocality;
    data['item_date'] = itemDate;
    return data;
  }
}
