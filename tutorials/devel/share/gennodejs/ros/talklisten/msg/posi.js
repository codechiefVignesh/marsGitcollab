// Auto-generated. Do not edit!

// (in-package talklisten.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class posi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ch = null;
    }
    else {
      if (initObj.hasOwnProperty('ch')) {
        this.ch = initObj.ch
      }
      else {
        this.ch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type posi
    // Serialize message field [ch]
    bufferOffset = _serializer.char(obj.ch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type posi
    let len;
    let data = new posi(null);
    // Deserialize message field [ch]
    data.ch = _deserializer.char(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'talklisten/posi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd7240a84f4873bbc50cced87558e8eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    char ch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new posi(null);
    if (msg.ch !== undefined) {
      resolved.ch = msg.ch;
    }
    else {
      resolved.ch = 0
    }

    return resolved;
    }
};

module.exports = posi;
