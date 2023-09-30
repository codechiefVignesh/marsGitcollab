// Auto-generated. Do not edit!

// (in-package talklisten.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posx = null;
      this.posy = null;
      this.ch = null;
    }
    else {
      if (initObj.hasOwnProperty('posx')) {
        this.posx = initObj.posx
      }
      else {
        this.posx = 0;
      }
      if (initObj.hasOwnProperty('posy')) {
        this.posy = initObj.posy
      }
      else {
        this.posy = 0;
      }
      if (initObj.hasOwnProperty('ch')) {
        this.ch = initObj.ch
      }
      else {
        this.ch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionRequest
    // Serialize message field [posx]
    bufferOffset = _serializer.int64(obj.posx, buffer, bufferOffset);
    // Serialize message field [posy]
    bufferOffset = _serializer.int64(obj.posy, buffer, bufferOffset);
    // Serialize message field [ch]
    bufferOffset = _serializer.char(obj.ch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionRequest
    let len;
    let data = new PositionRequest(null);
    // Deserialize message field [posx]
    data.posx = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [posy]
    data.posy = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ch]
    data.ch = _deserializer.char(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talklisten/PositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b39829f3535de1edb413ab3260621e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 posx
    int64 posy
    char ch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionRequest(null);
    if (msg.posx !== undefined) {
      resolved.posx = msg.posx;
    }
    else {
      resolved.posx = 0
    }

    if (msg.posy !== undefined) {
      resolved.posy = msg.posy;
    }
    else {
      resolved.posy = 0
    }

    if (msg.ch !== undefined) {
      resolved.ch = msg.ch;
    }
    else {
      resolved.ch = 0
    }

    return resolved;
    }
};

class PositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posx = null;
      this.posy = null;
      this.chr = null;
      this.dir = null;
    }
    else {
      if (initObj.hasOwnProperty('posx')) {
        this.posx = initObj.posx
      }
      else {
        this.posx = 0;
      }
      if (initObj.hasOwnProperty('posy')) {
        this.posy = initObj.posy
      }
      else {
        this.posy = 0;
      }
      if (initObj.hasOwnProperty('chr')) {
        this.chr = initObj.chr
      }
      else {
        this.chr = 0;
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionResponse
    // Serialize message field [posx]
    bufferOffset = _serializer.int64(obj.posx, buffer, bufferOffset);
    // Serialize message field [posy]
    bufferOffset = _serializer.int64(obj.posy, buffer, bufferOffset);
    // Serialize message field [chr]
    bufferOffset = _serializer.char(obj.chr, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.string(obj.dir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionResponse
    let len;
    let data = new PositionResponse(null);
    // Deserialize message field [posx]
    data.posx = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [posy]
    data.posy = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [chr]
    data.chr = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.dir);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talklisten/PositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2cb9c36699476c84f11a338a93242a00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 posx
    int64 posy
    char chr
    string dir
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionResponse(null);
    if (msg.posx !== undefined) {
      resolved.posx = msg.posx;
    }
    else {
      resolved.posx = 0
    }

    if (msg.posy !== undefined) {
      resolved.posy = msg.posy;
    }
    else {
      resolved.posy = 0
    }

    if (msg.chr !== undefined) {
      resolved.chr = msg.chr;
    }
    else {
      resolved.chr = 0
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PositionRequest,
  Response: PositionResponse,
  md5sum() { return 'd72baf183df81558beca8e5513a46eef'; },
  datatype() { return 'talklisten/Position'; }
};
