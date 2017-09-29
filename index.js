"use strict";
import { Platform } from "react-native";

var RNICloudUserToken = undefined;
if (Platform.OS === "ios") {
  RNICloudUserToken = require("react-native").NativeModules.RNICloudUserToken;
}

module.exports = RNICloudUserToken;
