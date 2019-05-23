// Auto-generated. Do not edit!

// (in-package HW4.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class First_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.srv = null;
      this.val = null;
    }
    else {
      if (initObj.hasOwnProperty('srv')) {
        this.srv = initObj.srv
      }
      else {
        this.srv = 0;
      }
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type First_srvRequest
    // Serialize message field [srv]
    bufferOffset = _serializer.int32(obj.srv, buffer, bufferOffset);
    // Serialize message field [val]
    bufferOffset = _serializer.int32(obj.val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type First_srvRequest
    let len;
    let data = new First_srvRequest(null);
    // Deserialize message field [srv]
    data.srv = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [val]
    data.val = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'HW4/First_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dcd40c77c15ddc2db88f3e8277b151b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 srv
    int32 val
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new First_srvRequest(null);
    if (msg.srv !== undefined) {
      resolved.srv = msg.srv;
    }
    else {
      resolved.srv = 0
    }

    if (msg.val !== undefined) {
      resolved.val = msg.val;
    }
    else {
      resolved.val = 0
    }

    return resolved;
    }
};

class First_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ans = null;
    }
    else {
      if (initObj.hasOwnProperty('ans')) {
        this.ans = initObj.ans
      }
      else {
        this.ans = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type First_srvResponse
    // Serialize message field [ans]
    bufferOffset = _serializer.int32(obj.ans, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type First_srvResponse
    let len;
    let data = new First_srvResponse(null);
    // Deserialize message field [ans]
    data.ans = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'HW4/First_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd5d0466a761324f0f90b3b2afef3d69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ans
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new First_srvResponse(null);
    if (msg.ans !== undefined) {
      resolved.ans = msg.ans;
    }
    else {
      resolved.ans = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: First_srvRequest,
  Response: First_srvResponse,
  md5sum() { return 'f8869d9badbe825e7bdab772d9d5e138'; },
  datatype() { return 'HW4/First_srv'; }
};
