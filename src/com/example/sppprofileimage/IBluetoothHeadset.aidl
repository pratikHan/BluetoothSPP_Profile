package com.example.sppprofileimage;

import android.bluetooth.BluetoothDevice;
interface IBluetoothHeadset {

// Public API
boolean connect(in BluetoothDevice device); //Api 11 and above
boolean connectHeadset(in BluetoothDevice device); // Below Api 11

boolean disconnect(in BluetoothDevice device);
boolean disconnectHeadset(in BluetoothDevice device);

List<BluetoothDevice> getConnectedDevices();
List<BluetoothDevice> getDevicesMatchingConnectionStates(in int[] states);
int getConnectionState(in BluetoothDevice device);
int getState(in BluetoothDevice device);
boolean setPriority(in BluetoothDevice device, int priority);
int getPriority(in BluetoothDevice device);
boolean startVoiceRecognition(in BluetoothDevice device);
boolean stopVoiceRecognition(in BluetoothDevice device);
boolean isAudioConnected(in BluetoothDevice device);
boolean sendVendorSpecificResultCode(in BluetoothDevice device,
                                     in String command,
                                     in String arg);

// APIs that can be made public in future
int getBatteryUsageHint(in BluetoothDevice device);

// Internal functions, not be made public
boolean acceptIncomingConnect(in BluetoothDevice device);
boolean rejectIncomingConnect(in BluetoothDevice device);
int getAudioState(in BluetoothDevice device);

boolean isAudioOn();
boolean connectAudio();
boolean disconnectAudio();
boolean startScoUsingVirtualVoiceCall(in BluetoothDevice device);
boolean stopScoUsingVirtualVoiceCall(in BluetoothDevice device);
void phoneStateChanged(int numActive, int numHeld, int callState, String number, int type);
void clccResponse(int index, int direction, int status, int mode, boolean mpty,String number, int type);

}            