package com.skjolberg.nfc.command;

import android.util.Log;

import com.acs.smartcard.Reader;
import com.acs.smartcard.ReaderException;
import com.skjolberg.nfc.acs.AcrAutomaticPICCPolling;
import com.skjolberg.nfc.acs.AcrLED;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import custom.java.CommandAPDU;

public interface ACR1255Commands {

    public static final int LED_1_GREEN = 1;
    public static final int LED_1_RED = 2;
    public static final int LED_2_BLUE = 4;
    public static final int LED_2_RED = 8;

    List<AcrAutomaticPICCPolling> setAutomaticPICCPolling(int slot, AcrAutomaticPICCPolling... picc) throws ReaderException;

    List<AcrAutomaticPICCPolling> getAutomaticPICCPolling(int slot) throws ReaderException;

    Boolean setPICC(int slot, int picc) throws ReaderException;

    Integer getPICC(int slot) throws ReaderException;

    String getFirmware(int slot) throws ReaderException;

    String getSerialNumber(int slot) throws ReaderException;

    boolean setLED(int slot, int state) throws ReaderException;

    List<Set<AcrLED>> getLED(int slot) throws ReaderException;

    int getLED2(int slot) throws ReaderException;

    void setBuzzerBeepDurationOnCardDetection(int slot, int duration) throws ReaderException;

    int setDefaultLEDAndBuzzerBehaviour(int slot, int picc) throws ReaderException;

    int getDefaultLEDAndBuzzerBehaviour2(int slot) throws ReaderException;

    byte getAntennaFieldStatus(int slot) throws ReaderException;

    boolean setAntennaField(int slot, boolean on) throws ReaderException;

    byte getBluetoothTransmissionPower(int slot) throws ReaderException;

    boolean setBluetoothTransmissionPower(int slot, byte power) throws ReaderException;

    byte[] setAutoPPS(int slot, byte tx, byte rx) throws ReaderException;

    byte[] getAutoPPS(int slot) throws ReaderException;

    Boolean setSleepModeOption(int slot, byte option) throws ReaderException;

    byte[] control(int slotNum, int controlCode, byte[] command) throws ReaderException;

    byte[] transmit(int slotNum, byte[] command) throws ReaderException;
}
