// Auto-generated. Do not edit!

// (in-package hrwros_week1_assignment.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BoxHeightInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.box_height = null;
      this.box_height_info = null;
    }
    else {
      if (initObj.hasOwnProperty('box_height')) {
        this.box_height = initObj.box_height
      }
      else {
        this.box_height = 0.0;
      }
      if (initObj.hasOwnProperty('box_height_info')) {
        this.box_height_info = initObj.box_height_info
      }
      else {
        this.box_height_info = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoxHeightInformation
    // Serialize message field [box_height]
    bufferOffset = _serializer.float32(obj.box_height, buffer, bufferOffset);
    // Serialize message field [box_height_info]
    bufferOffset = _serializer.bool(obj.box_height_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoxHeightInformation
    let len;
    let data = new BoxHeightInformation(null);
    // Deserialize message field [box_height]
    data.box_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [box_height_info]
    data.box_height_info = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_week1_assignment/BoxHeightInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc8c91069d9f99232ef43230895a9f44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Add your code for part 2 here
    float32 box_height
    bool box_height_info
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoxHeightInformation(null);
    if (msg.box_height !== undefined) {
      resolved.box_height = msg.box_height;
    }
    else {
      resolved.box_height = 0.0
    }

    if (msg.box_height_info !== undefined) {
      resolved.box_height_info = msg.box_height_info;
    }
    else {
      resolved.box_height_info = false
    }

    return resolved;
    }
};

module.exports = BoxHeightInformation;
