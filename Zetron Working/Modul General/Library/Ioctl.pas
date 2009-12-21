// (c) Alex Konshin    12 jul 2000      mailto:alexk@mtgroup.ru

// Code based on C code from MSDN -> KB: Windows development
// -> SAMPLE: SmartApp.exe

// for mor information about S.M.A.R.T. ioctl see
//  http://www.microsoft.com/hwdev/respec/storspec.htm
//  http://www.microsoft.com/hwdev/download/respec/iocltapi.rtf

// see also sample SmartApp from MSDN Knowledge Base
//  Windows Development -> Win32 Device Driver Kit ->
//  SAMPLE: SmartApp.exe Accesses SMART stats in IDE drives


unit Ioctl;

interface

uses
  Windows;

type
  USHORT = Word;
  DEVICE_TYPE = ULONG;

//=============================================================
// Define the various device type values.
// Note that values used by Microsoft Corporation are in the range 0-32767,
// and 32768-65535 are reserved for use by customers.
const
  FILE_DEVICE_BEEP = $00000001;
  FILE_DEVICE_CD_ROM = $00000002;
  FILE_DEVICE_CD_ROM_FILE_SYSTEM = $00000003;
  FILE_DEVICE_CONTROLLER = $00000004;
  FILE_DEVICE_DATALINK = $00000005;
  FILE_DEVICE_DFS = $00000006;
  FILE_DEVICE_DISK = $00000007;
  FILE_DEVICE_DISK_FILE_SYSTEM = $00000008;
  FILE_DEVICE_FILE_SYSTEM = $00000009;
  FILE_DEVICE_INPORT_PORT = $0000000A;
  FILE_DEVICE_KEYBOARD = $0000000B;
  FILE_DEVICE_MAILSLOT = $0000000C;
  FILE_DEVICE_MIDI_IN = $0000000D;
  FILE_DEVICE_MIDI_OUT = $0000000E;
  FILE_DEVICE_MOUSE = $0000000F;
  FILE_DEVICE_MULTI_UNC_PROVIDER = $00000010;
  FILE_DEVICE_NAMED_PIPE = $00000011;
  FILE_DEVICE_NETWORK = $00000012;
  FILE_DEVICE_NETWORK_BROWSER = $00000013;
  FILE_DEVICE_NETWORK_FILE_SYSTEM = $00000014;
  FILE_DEVICE_NULL = $00000015;
  FILE_DEVICE_PARALLEL_PORT = $00000016;
  FILE_DEVICE_PHYSICAL_NETCARD = $00000017;
  FILE_DEVICE_PRINTER = $00000018;
  FILE_DEVICE_SCANNER = $00000019;
  FILE_DEVICE_SERIAL_MOUSE_PORT = $0000001A;
  FILE_DEVICE_SERIAL_PORT = $0000001B;
  FILE_DEVICE_SCREEN = $0000001C;
  FILE_DEVICE_SOUND = $0000001D;
  FILE_DEVICE_STREAMS = $0000001E;
  FILE_DEVICE_TAPE = $0000001F;
  FILE_DEVICE_TAPE_FILE_SYSTEM = $00000020;
  FILE_DEVICE_TRANSPORT = $00000021;
  FILE_DEVICE_UNKNOWN = $00000022;
  FILE_DEVICE_VIDEO = $00000023;
  FILE_DEVICE_VIRTUAL_DISK = $00000024;
  FILE_DEVICE_WAVE_IN = $00000025;
  FILE_DEVICE_WAVE_OUT = $00000026;
  FILE_DEVICE_8042_PORT = $00000027;
  FILE_DEVICE_NETWORK_REDIRECTOR = $00000028;
  FILE_DEVICE_BATTERY = $00000029;
  FILE_DEVICE_BUS_EXTENDER = $0000002A;
  FILE_DEVICE_MODEM = $0000002B;
  FILE_DEVICE_VDM = $0000002C;
  FILE_DEVICE_MASS_STORAGE = $0000002D;
  FILE_DEVICE_SMB = $0000002E;
  FILE_DEVICE_KS = $0000002F;
  FILE_DEVICE_CHANGER = $00000030;
  FILE_DEVICE_SMARTCARD = $00000031;
  FILE_DEVICE_ACPI = $00000032;
  FILE_DEVICE_DVD = $00000033;
  FILE_DEVICE_FULLSCREEN_VIDEO = $00000034;
  FILE_DEVICE_DFS_FILE_SYSTEM = $00000035;
  FILE_DEVICE_DFS_VOLUME = $00000036;
  FILE_DEVICE_SERENUM = $00000037;
  FILE_DEVICE_TERMSRV = $00000038;
  FILE_DEVICE_KSEC = $00000039;

const
  READ_ATTRIBUTE_BUFFER_SIZE = 512;
  IDENTIFY_BUFFER_SIZE = 512;
  READ_THRESHOLD_BUFFER_SIZE = 512;


const
// SMART IOCTL commands
  DFP_GET_VERSION = $00074080;
  DFP_SEND_DRIVE_COMMAND = $0007C084;
  DFP_RECEIVE_DRIVE_DATA = $0007C088;

const
  IOCTL_STORAGE_BASE = FILE_DEVICE_MASS_STORAGE;
  IOCTL_SCSI_BASE = FILE_DEVICE_CONTROLLER;

// Define the method codes for how buffers are passed for I/O and FS controls
  METHOD_BUFFERED = 0;
  METHOD_IN_DIRECT = 1;
  METHOD_OUT_DIRECT = 2;
  METHOD_NEITHER = 3;

// Define the access check value for any access
  FILE_ANY_ACCESS = 0;
  FILE_SPECIAL_ACCESS = FILE_ANY_ACCESS;
  FILE_READ_ACCESS = $0001; // file & pipe
  FILE_WRITE_ACCESS = $0002; // file & pipe


//#define IOCTL_STORAGE_GET_MEDIA_TYPES  CTL_CODE(IOCTL_STORAGE_BASE, 0x0300, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_STORAGE_GET_MEDIA_TYPES = (IOCTL_STORAGE_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0300 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_STORAGE_GET_MEDIA_TYPES_EX CTL_CODE(IOCTL_STORAGE_BASE, 0x0301, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_STORAGE_GET_MEDIA_TYPES_EX = (IOCTL_STORAGE_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0301 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_STORAGE_GET_DEVICE_NUMBER CTL_CODE(IOCTL_STORAGE_BASE, 0x0420, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_STORAGE_GET_DEVICE_NUMBER = (IOCTL_STORAGE_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0420 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_PASS_THROUGH         CTL_CODE(IOCTL_SCSI_BASE, 0x0401, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
  IOCTL_SCSI_PASS_THROUGH = (IOCTL_SCSI_BASE shl 16) or ((FILE_READ_ACCESS or FILE_WRITE_ACCESS) shl 14) or ($0401 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_MINIPORT             CTL_CODE(IOCTL_SCSI_BASE, 0x0402, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
  IOCTL_SCSI_MINIPORT = (IOCTL_SCSI_BASE shl 16) or ((FILE_READ_ACCESS or FILE_WRITE_ACCESS) shl 14) or ($0402 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_GET_INQUIRY_DATA     CTL_CODE(IOCTL_SCSI_BASE, 0x0403, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_SCSI_GET_INQUIRY_DATA = (IOCTL_SCSI_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0403 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_GET_CAPABILITIES     CTL_CODE(IOCTL_SCSI_BASE, 0x0404, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_SCSI_GET_CAPABILITIES = (IOCTL_SCSI_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0404 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_PASS_THROUGH_DIRECT  CTL_CODE(IOCTL_SCSI_BASE, 0x0405, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
  IOCTL_SCSI_PASS_THROUGH_DIRECT = (IOCTL_SCSI_BASE shl 16) or ((FILE_READ_ACCESS or FILE_WRITE_ACCESS) shl 14) or ($0405 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_GET_ADDRESS          CTL_CODE(IOCTL_SCSI_BASE, 0x0406, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_SCSI_GET_ADDRESS = (IOCTL_SCSI_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0406 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_RESCAN_BUS           CTL_CODE(IOCTL_SCSI_BASE, 0x0407, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_SCSI_RESCAN_BUS = (IOCTL_SCSI_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0407 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_GET_DUMP_POINTERS    CTL_CODE(IOCTL_SCSI_BASE, 0x0408, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_SCSI_GET_DUMP_POINTERS = (IOCTL_SCSI_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0408 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_SCSI_FREE_DUMP_POINTERS   CTL_CODE(IOCTL_SCSI_BASE, 0x0409, METHOD_BUFFERED, FILE_ANY_ACCESS)
  IOCTL_SCSI_GET_FREE_DUMP_POINTERS = (IOCTL_SCSI_BASE shl 16) or (FILE_ANY_ACCESS shl 14) or ($0409 shl 2) or (METHOD_BUFFERED);

//#define IOCTL_IDE_PASS_THROUGH          CTL_CODE(IOCTL_SCSI_BASE, 0x040a, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
  IOCTL_IDE_PASS_THROUGH = (IOCTL_SCSI_BASE shl 16) or ((FILE_READ_ACCESS or FILE_WRITE_ACCESS) shl 14) or ($040A shl 2) or (METHOD_BUFFERED);

//-------------------------------------------------------------
// GETVERSIONOUTParameters contains the data returned from the
// Get Driver Version function.
//-------------------------------------------------------------
type
  TGetVersionOutParameters = packed record
    bVersion: BYTE; // Binary driver version.
    bRevision: BYTE; // Binary driver revision.
    bReserved: BYTE; // Not used.
    bIDEDeviceMap: BYTE; // Bit map of IDE devices.
    fCapabilities: DWORD; // Bit mask of driver capabilities.
    dwReserved: array[0..3] of DWORD; // For future use.
  end;
  GETVERSIONOUTParameters = TGetVersionOutParameters;
  GETVERSIONINParameters = TGetVersionOutParameters;
  PGetVersionOutParameters = ^TGetVersionOutParameters;
  LPGetVersionOutParameters = ^TGetVersionOutParameters;

// Bits returned in the fCapabilities member of GETVERSIONOUTParameters
// ATA ID command supported
const
  CAP_IDE_ID_FUNCTION = 1; // ATAPI ID command supported
  CAP_IDE_ATAPI_ID = 2; // SMART commannds supported
  CAP_IDE_EXECUTE_SMART_FUNCTION = 4;

//---------------------------------------------------------------------
// IDE registers
//---------------------------------------------------------------------
type
  TIDERegs = packed record
    bFeaturesReg: BYTE; // Used for specifying SMART "commands".
    bSectorCountReg: BYTE; // IDE sector count register
    bSectorNumberReg: BYTE; // IDE sector number register
    bCylLowReg: BYTE; // IDE low order cylinder value
    bCylHighReg: BYTE; // IDE high order cylinder value
    bDriveHeadReg: BYTE; // IDE drive/head register
    bCommandReg: BYTE; // Actual IDE command.
    bReserved: BYTE; // reserved for future use.  Must be zero.
  end;
  IDEREGS = TIDERegs;
  PIDERegs = ^TIDERegs;
  LPIDERegs = PIDERegs;
  _IDEREGS = TIDERegs;

// Valid values for the bCommandReg member of IDEREGS.
const
  IDE_ATAPI_ID = $A1; // Returns ID sector for ATAPI.
  IDE_ID_FUNCTION = $EC; // Returns ID sector for ATA.
  IDE_EXECUTE_SMART_FUNCTION = $B0; // Performs SMART cmd. Requires valid bFeaturesReg, bCylLowReg, and bCylHighReg

// Cylinder register values required when issuing SMART command
  SMART_CYL_LOW = $4F;
  SMART_CYL_HI = $C2;

//---------------------------------------------------------------------
// SENDCMDINParameters contains the input parameters for the
// Send Command to Drive function.
//---------------------------------------------------------------------
type
  TSendCmdInParameters = packed record
    cBufferSize: DWORD; // Buffer size in bytes
    irDriveRegs: TIDERegs; // Structure with drive register values.
    bDriveNumber: BYTE; // Physical drive number to send command to (0,1,2,3).
    bReserved: array[0..2] of Byte; // Reserved for future expansion.
    dwReserved: array[0..3] of DWORD; // For future use.
    bBuffer: array[0..0] of Byte; // Input buffer.
  end;
  SENDCMDINParameters = TSendCmdInParameters;
  PSendCmdInParameters = ^TSendCmdInParameters;
  LPSendCmdInParameters = PSendCmdInParameters;
  _SENDCMDINParameters = TSendCmdInParameters;

//---------------------------------------------------------------------
// Status returned from driver
//---------------------------------------------------------------------
type
  TDriverStatus = packed record
    bDriverError: Byte; // Error code from driver, or 0 if no error.
    bIDEStatus: Byte; // Contents of IDE Error register. Only valid when bDriverError is SMART_IDE_ERROR.
    bReserved: array[0..1] of Byte; // Reserved for future expansion.
    dwReserved: array[0..1] of DWORD; // Reserved for future expansion.
  end;
  DRIVERSTATUS = TDriverStatus;
  PDriverStatus = ^TDriverStatus;
  LPDriverStatus = TDriverStatus;
  _DRIVERSTATUS = TDriverStatus;

// bDriverError values
const
  SMART_NO_ERROR = 0; // No error
  SMART_IDE_ERROR = 1; // Error from IDE controller
  SMART_INVALID_FLAG = 2; // Invalid command flag
  SMART_INVALID_COMMAND = 3; // Invalid command byte
  SMART_INVALID_BUFFER = 4; // Bad buffer (null, invalid addr..)
  SMART_INVALID_DRIVE = 5; // Drive number not valid
  SMART_INVALID_IOCTL = 6; // Invalid IOCTL
  SMART_ERROR_NO_MEM = 7; // Could not lock user's buffer
  SMART_INVALID_REGISTER = 8; // Some IDE Register not valid
  SMART_NOT_SUPPORTED = 9; // Invalid cmd flag set
  SMART_NO_IDE_DEVICE = 10; // Cmd issued to device not present although drive number is valid
 // 11-255 reserved

//---------------------------------------------------------------------
// Structure returned by SMART IOCTL for several commands
//---------------------------------------------------------------------
type
  TSendCmdOutParameters = packed record
    cBufferSize: DWORD; // Size of bBuffer in bytes
    DriverStatus: TDriverStatus; // Driver status structure.
    bBuffer: array[0..0] of BYTE; // Buffer of arbitrary length in which to store the data read from the drive.
  end;
  SENDCMDOUTParameters = TSendCmdOutParameters;
  PSendCmdOutParameters = ^TSendCmdOutParameters;
  LPSendCmdOutParameters = PSendCmdOutParameters;
  _SENDCMDOUTParameters = TSendCmdOutParameters;

//---------------------------------------------------------------------
// Feature register defines for SMART "sub commands"
//---------------------------------------------------------------------
const
  SMART_READ_ATTRIBUTE_VALUES = $D0; // ATA4: Renamed
                                               // SMART READ DATA
  SMART_READ_ATTRIBUTE_THRESHOLDS = $D1; // Obsoleted in ATA4!
  SMART_ENABLE_DISABLE_ATTRIBUTE_AUTOSAVE = $D2;
  SMART_SAVE_ATTRIBUTE_VALUES = $D3;
  SMART_EXECUTE_OFFLINE_IMMEDIATE = $D4; // ATA4
 // Vendor specific commands:
  SMART_ENABLE_SMART_OPERATIONS = $D8;
  SMART_DISABLE_SMART_OPERATIONS = $D9;
  SMART_RETURN_SMART_STATUS = $DA;

//---------------------------------------------------------------------
// The following structure defines the structure of a Drive Attribute
//---------------------------------------------------------------------
type
  TDriveAttribute = packed record
    bAttrID: BYTE; // Identifies which attribute
    wStatusFlags: WORD; // see bit definitions below
    bAttrValue: BYTE; // Current normalized value
    bWorstValue: BYTE; // How bad has it ever been?
    bRawValue: array[0..5] of BYTE; // Un-normalized value
    bReserved: BYTE; // ...
  end;
  DRIVEATTRIBUTE = TDriveAttribute;
  PDriveAttribute = ^TDriveAttribute;
  LPDriveAttribute = PDriveAttribute;

//---------------------------------------------------------------------
// The following structure defines the structure of a Warranty Threshold
// Obsoleted in ATA4!
//---------------------------------------------------------------------
  TAttrThreshold = packed record
    bAttrID: BYTE; // Identifies which attribute
    bWarrantyThreshold: BYTE; // Triggering value
    bReserved: array[0..9] of BYTE; // ...
  end;
  ATTRTHRESHOLD = TAttrThreshold;
  PAttrThreshold = ^TAttrThreshold;
  LPAttrThreshold = PAttrThreshold;

//---------------------------------------------------------------------
// The following struct defines the interesting part of the IDENTIFY buffer:
//---------------------------------------------------------------------
  TIdSector = packed record
    wGenConfig: USHORT;
    wNumCyls: USHORT;
    wReserved: USHORT;
    wNumHeads: USHORT;
    wBytesPerTrack: USHORT;
    wBytesPerSector: USHORT;
    wSectorsPerTrack: USHORT;
    wVendorUnique: array[0..2] of USHORT;
    sSerialNumber: array[0..19] of CHAR;
    wBufferType: USHORT;
    wBufferSize: USHORT;
    wECCSize: USHORT;
    sFirmwareRev: array[0..7] of CHAR;
    sModelNumber: array[0..39] of CHAR;
    wMoreVendorUnique: USHORT;
    wDoubleWordIO: USHORT;
    wCapabilities: USHORT;
    wReserved1: USHORT;
    wPIOTiming: USHORT;
    wDMATiming: USHORT;
    wBS: USHORT;
    wNumCurrentCyls: USHORT;
    wNumCurrentHeads: USHORT;
    wNumCurrentSectorsPerTrack: USHORT;
    ulCurrentSectorCapacity: ULONG;
    wMultSectorStuff: USHORT;
    ulTotalAddressableSectors: ULONG;
    wSingleWordDMA: USHORT;
    wMultiWordDMA: USHORT;
    bReserved: array[0..127] of BYTE;
  end;
  PIdSector = ^TIdSector;
  IDSECTOR = TIdSector;
  _IDSECTOR = TIdSector;

//---------------------------------------------------------------------
// Valid Attribute IDs
//---------------------------------------------------------------------
const
  ATTR_INVALID = 0;
  ATTR_READ_ERROR_RATE = 1;
  ATTR_THROUGHPUT_PERF = 2;
  ATTR_SPIN_UP_TIME = 3;
  ATTR_START_STOP_COUNT = 4;
  ATTR_REALLOC_SECTOR_COUNT = 5;
  ATTR_READ_CHANNEL_MARGIN = 6;
  ATTR_SEEK_ERROR_RATE = 7;
  ATTR_SEEK_TIME_PERF = 8;
  ATTR_POWER_ON_HRS_COUNT = 9;
  ATTR_SPIN_RETRY_COUNT = 10;
  ATTR_CALIBRATION_RETRY_COUNT = 11;
  ATTR_POWER_CYCLE_COUNT = 12;
//---------------------------------------------------------------------
// Status Flags Values
//---------------------------------------------------------------------
  PRE_FAILURE_WARRANTY = $1;
  ON_LINE_COLLECTION = $2;
  PERFORMANCE_ATTRIBUTE = $4;
  ERROR_RATE_ATTRIBUTE = $8;
  EVENT_COUNT_ATTRIBUTE = $10;
  SELF_PRESERVING_ATTRIBUTE = $20;

  NUM_ATTRIBUTE_STRUCTS = 30;

//=============================================================
// IOCTL_STORAGE_GET_DEVICE_NUMBER
//
// input - none
//
// output - STORAGE_DEVICE_NUMBER structure
//          The values in the STORAGE_DEVICE_NUMBER structure are guaranteed
//          to remain unchanged until the system is rebooted.  They are not
//          guaranteed to be persistant across boots.
type
  TStorageDeviceNumber = packed record
  // The FILE_DEVICE_XXX type for this device.
    DeviceType: DEVICE_TYPE;

  // The number of this device
    DeviceNumber: ULONG;

  // If the device is partitionable, the partition number of the device.
  // Otherwise -1
    PartitionNumber: ULONG;
  end;
  STORAGE_DEVICE_NUMBER = TStorageDeviceNumber;
  PStorageDeviceNumber = ^TStorageDeviceNumber;


//=============================================================
// IOCTL_STORAGE_GET_MEDIA_TYPES_EX will return an array of DEVICE_MEDIA_INFO
// structures, one per supported type, embedded in the GET_MEDIA_TYPES struct.

type
  STORAGE_MEDIA_TYPE = DWORD;
const
// Following are defined in ntdddisk.h in the MEDIA_TYPE enum
  Unknown = 0; // Format is unknown
  F5_1Pt2_512 = 1; // 5.25", 1.2MB,  512 bytes/sector
  F3_1Pt44_512 = 2; // 3.5",  1.44MB, 512 bytes/sector
  F3_2Pt88_512 = 3; // 3.5",  2.88MB, 512 bytes/sector
  F3_20Pt8_512 = 4; // 3.5",  20.8MB, 512 bytes/sector
  F3_720_512 = 5; // 3.5",  720KB,  512 bytes/sector
  F5_360_512 = 6; // 5.25", 360KB,  512 bytes/sector
  F5_320_512 = 7; // 5.25", 320KB,  512 bytes/sector
  F5_320_1024 = 8; // 5.25", 320KB,  1024 bytes/sector
  F5_180_512 = 9; // 5.25", 180KB,  512 bytes/sector
  F5_160_512 = 10; // 5.25", 160KB,  512 bytes/sector
  RemovableMedia = 11; // Removable media other than floppy
  FixedMedia = 12; // Fixed hard disk media
  F3_120M_512 = 13; // 3.5", 120M Floppy
  F3_640_512 = 14; // 3.5" ,  640KB,  512 bytes/sector
  F5_640_512 = 15; // 5.25",  640KB,  512 bytes/sector
  F5_720_512 = 16; // 5.25",  720KB,  512 bytes/sector
  F3_1Pt2_512 = 17; // 3.5" ,  1.2Mb,  512 bytes/sector
  F3_1Pt23_1024 = 18; // 3.5" ,  1.23Mb, 1024 bytes/sector
  F5_1Pt23_1024 = 19; // 5.25",  1.23MB, 1024 bytes/sector
  F3_128Mb_512 = 20; // 3.5" MO 128Mb   512 bytes/sector
  F3_230Mb_512 = 21; // 3.5" MO 230Mb   512 bytes/sector
  F8_256_128 = 22; // 8",     256KB,  128 bytes/sector

// STORAGE_MEDIA_TYPE
  DDS_4mm = 32; // Tape - DAT DDS1,2,... (all vendors)
  MiniQic = 33; // Tape - miniQIC Tape
  Travan = 34; // Tape - Travan TR-1,2,3,...
  QIC = 35; // Tape - QIC
  MP_8mm = 36; // Tape - 8mm Exabyte Metal Particle
  AME_8mm = 37; // Tape - 8mm Exabyte Advanced Metal Evap
  AIT1_8mm = 38; // Tape - 8mm Sony AIT1
  DLT = 39; // Tape - DLT Compact IIIxt, IV
  NCTP = 40; // Tape - Philips NCTP
  IBM_3480 = 41; // Tape - IBM 3480
  IBM_3490E = 42; // Tape - IBM 3490E
  IBM_Magstar_3590 = 43; // Tape - IBM Magstar 3590
  IBM_Magstar_MP = 44; // Tape - IBM Magstar MP
  STK_DATA_D3 = 45; // Tape - STK Data D3
  SONY_DTF = 46; // Tape - Sony DTF
  DV_6mm = 47; // Tape - 6mm Digital Video
  DMI = 48; // Tape - Exabyte DMI and compatibles
  SONY_D2 = 49; // Tape - Sony D2S and D2L
  CLEANER_CARTRIDGE = 50; // Cleaner - All Drive types that support Drive Cleaners
  CD_ROM = 51; // Opt_Disk - CD
  CD_R = 52; // Opt_Disk - CD-Recordable (Write Once)
  CD_RW = 53; // Opt_Disk - CD-Rewriteable
  DVD_ROM = 54; // Opt_Disk - DVD-ROM
  DVD_R = 55; // Opt_Disk - DVD-Recordable (Write Once)
  DVD_RW = 56; // Opt_Disk - DVD-Rewriteable
  MO_3_RW = 57; // Opt_Disk - 3.5" Rewriteable MO Disk
  MO_5_WO = 58; // Opt_Disk - MO 5.25" Write Once
  MO_5_RW = 59; // Opt_Disk - MO 5.25" Rewriteable (not LIMDOW)
  MO_5_LIMDOW = 60; // Opt_Disk - MO 5.25" Rewriteable (LIMDOW)
  PC_5_WO = 61; // Opt_Disk - Phase Change 5.25" Write Once Optical
  PC_5_RW = 62; // Opt_Disk - Phase Change 5.25" Rewriteable
  PD_5_RW = 63; // Opt_Disk - PhaseChange Dual Rewriteable
  ABL_5_WO = 64; // Opt_Disk - Ablative 5.25" Write Once Optical
  PINNACLE_APEX_5_RW = 65; // Opt_Disk - Pinnacle Apex 4.6GB Rewriteable Optical
  SONY_12_WO = 66; // Opt_Disk - Sony 12" Write Once
  PHILIPS_12_WO = 67; // Opt_Disk - Philips/LMS 12" Write Once
  HITACHI_12_WO = 68; // Opt_Disk - Hitachi 12" Write Once
  CYGNET_12_WO = 69; // Opt_Disk - Cygnet/ATG 12" Write Once
  KODAK_14_WO = 70; // Opt_Disk - Kodak 14" Write Once
  MO_NFR_525 = 71; // Opt_Disk - Near Field Recording (Terastor)
  NIKON_12_RW = 72; // Opt_Disk - Nikon 12" Rewriteable
  IOMEGA_ZIP = 73; // Mag_Disk - Iomega Zip
  IOMEGA_JAZ = 74; // Mag_Disk - Iomega Jaz
  SYQUEST_EZ135 = 75; // Mag_Disk - Syquest EZ135
  SYQUEST_EZFLYER = 76; // Mag_Disk - Syquest EzFlyer
  SYQUEST_SYJET = 77; // Mag_Disk - Syquest SyJet
  AVATAR_F2 = 78; // Mag_Disk - 2.5" Floppy
  MP2_8mm = 79; // Tape - 8mm Hitachi
  DST_S = 80; // Ampex DST Small Tapes
  DST_M = 81; // Ampex DST Medium Tapes
  DST_L = 82; // Ampex DST Large Tapes
  VXATape_1 = 83; // Ecrix 8mm Tape
  VXATape_2 = 84; // Ecrix 8mm Tape
  STK_EAGLE = 85; // STK Eagle
  LTO_Ultrium = 86; // IBM, HP, Seagate LTO Ultrium
  LTO_Accelis = 87; // IBM, HP, Seagate LTO Accelis

//-------------------------------------------------------------
  MEDIA_ERASEABLE = $00000001;
  MEDIA_WRITE_ONCE = $00000002;
  MEDIA_READ_ONLY = $00000004;
  MEDIA_READ_WRITE = $00000008;
  MEDIA_WRITE_PROTECTED = $00000100;
  MEDIA_CURRENTLY_MOUNTED = $80000000;

//-------------------------------------------------------------
// Define the different storage bus types
// Bus types below 128 (0x80) are reserved for Microsoft use
type
  TStorageBusType = (BusTypeUnknown, BusTypeScsi, BusTypeAtapi, BusTypeAta,
    BusType1394, BusTypeSsa, BusTypeFibre, BusTypeUsb, BusTypeRAID);
//  BusTypeMaxReserved = 0x7F
  STORAGE_BUS_TYPE = TStorageBusType;
  PStorageBusType = ^TStorageBusType;

  TDeviceMediaInfo = packed record
    DeviceSpecific: packed record
      case byte of
        0:
        (DiskInfo: packed record
            Cylinders: LARGE_INTEGER;
            MediaType: STORAGE_MEDIA_TYPE;
            TracksPerCylinder: ULONG;
            SectorsPerTrack: ULONG;
            BytesPerSector: ULONG;
            NumberMediaSides: ULONG;
            MediaCharacteristics: ULONG; // Bitmask of MEDIA_XXX values.
          end);
        1:
        (RemovableDiskInfo: packed record
            Cylinders: LARGE_INTEGER;
            MediaType: STORAGE_MEDIA_TYPE;
            TracksPerCylinder: ULONG;
            SectorsPerTrack: ULONG;
            BytesPerSector: ULONG;
            NumberMediaSides: ULONG;
            MediaCharacteristics: ULONG; // Bitmask of MEDIA_XXX values.
          end);
        2:
        (TapeInfo: packed record
            MediaType: STORAGE_MEDIA_TYPE;
            MediaCharacteristics: ULONG; // Bitmask of MEDIA_XXX values.
            CurrentBlockSize: ULONG;
            BusType: STORAGE_BUS_TYPE;
            BusSpecificData: packed record // Bus specific information describing the medium supported.
              case longint of
                0:
                (ScsiInformation: packed record
                    MediumType: UCHAR;
                    DensityCode: UCHAR;
                  end);
            end;
          end);
    end;
  end;
  DEVICE_MEDIA_INFO = TDeviceMediaInfo;
  PDeviceMediaInfo = ^TDeviceMediaInfo;

  TGetMediaTypes = packed record
    DeviceType: DEVICE_TYPE; // FILE_DEVICE_XXX values
    MediaInfoCount: ULONG;
    MediaInfo: array[0..0] of DEVICE_MEDIA_INFO;
  end;
  GET_MEDIA_TYPES = TGetMediaTypes;
  PGetMediaTypes = ^TGetMediaTypes;


//=============================================================
// IOCTL_SCSI_MINIPORT

// Define header for I/O control SRB. }
type
  TSrbIoControl = packed record
    HeaderLength: ULONG; // Is sizeof(SRB_IO_CONTROL).

  // Identifies the application-dedicated, target HBA for this request.
  // This signature is used to prevent conflicts in ControlCode values between vendors.
  // It should be a string of ASCII characters.
  // If a miniport driver does not recognize the input Signature value,
  // it must complete the request with a status of SRB_STATUS_INVALID_REQUEST.
    Signature: array[0..7] of Char;

  // Indicates the interval in seconds that the request can execute
  // before the OS-specific port driver might consider it timed out.
  // Miniport drivers are not required to time requests because the port driver does.
    Timeout: ULONG;

  // Indicates the operation to be performed. There are no system-defined operations.
  // Values must be defined by the driver as a set of private I/O control codes
  // with which the application can make requests by calling the Win32R DeviceIoControl function.
    ControlCode: ULONG;

  // Returns a status code for examination by the requesting application.
    ReturnCode: ULONG;

  // Indicates the size in bytes of the immediately following data area.
  // This area can be divided for the particular operation into input and output areas.
  // For input requests, the contents of the DataBuffer will be copied
   // to the requestor up to the returned value of DataTransferLength.
    Length: ULONG;
  end;
  SRB_IO_CONTROL = TSrbIoControl;
  PSrbIoControl = ^TSrbIoControl;

// SCSI IO Device Control Codes
const
  FILE_DEVICE_SCSI = $0000001B;

  IOCTL_SCSI_EXECUTE_IN = (FILE_DEVICE_SCSI shl 16) or $0011;
  IOCTL_SCSI_EXECUTE_OUT = (FILE_DEVICE_SCSI shl 16) or $0012;
  IOCTL_SCSI_EXECUTE_NONE = (FILE_DEVICE_SCSI shl 16) or $0013;

// SMART support in atapi
  IOCTL_SCSI_MINIPORT_SMART_VERSION = (FILE_DEVICE_SCSI shl 16) or $0500;
  IOCTL_SCSI_MINIPORT_IDENTIFY = (FILE_DEVICE_SCSI shl 16) or $0501;
  IOCTL_SCSI_MINIPORT_READ_SMART_ATTRIBS = (FILE_DEVICE_SCSI shl 16) or $0502;
  IOCTL_SCSI_MINIPORT_READ_SMART_THRESHOLDS = (FILE_DEVICE_SCSI shl 16) or $0503;
  IOCTL_SCSI_MINIPORT_ENABLE_SMART = (FILE_DEVICE_SCSI shl 16) or $0504;
  IOCTL_SCSI_MINIPORT_DISABLE_SMART = (FILE_DEVICE_SCSI shl 16) or $0505;
  IOCTL_SCSI_MINIPORT_RETURN_STATUS = (FILE_DEVICE_SCSI shl 16) or $0506;
  IOCTL_SCSI_MINIPORT_ENABLE_DISABLE_AUTOSAVE = (FILE_DEVICE_SCSI shl 16) or $0507;
  IOCTL_SCSI_MINIPORT_SAVE_ATTRIBUTE_VALUES = (FILE_DEVICE_SCSI shl 16) or $0508;
  IOCTL_SCSI_MINIPORT_EXECUTE_OFFLINE_DIAGS = (FILE_DEVICE_SCSI shl 16) or $0509;
  IOCTL_SCSI_MINIPORT_ENABLE_DISABLE_AUTO_OFFLINE = (FILE_DEVICE_SCSI shl 16) or $050A;

//=============================================================
// Used with the IOCTL_SCSI_GET_INQUIRY_DATA IOCTL.
type
 // Define SCSI adapter bus information.
{$ALIGN ON}
  TScsiBusData = record // warning! dword alignment
    NumberOfLogicalUnits: Byte;
    InitiatorBusId: Byte;
    InquiryDataOffset: ULONG;
  end;
  SCSI_BUS_DATA = TScsiBusData;
  PScsiBusData = ^TScsiBusData;

 // Define SCSI adapter bus information structure..
  TScsiAdapterBusInfo = record // warning! dword alignment
    NumberOfBuses: Byte;
    BusData: array[0..0] of SCSI_BUS_DATA;
  end;
  SCSI_ADAPTER_BUS_INFO = TScsiAdapterBusInfo;
  PScsiAdapterBusInfo = ^TScsiAdapterBusInfo;

  TScsiInquiryData = record // warning! dword alignment
    PathId: Byte;
    TargetId: Byte;
    Lun: Byte;
    DeviceClaimed: Boolean;
    InquiryDataLength: ULONG;
    NextInquiryDataOffset: ULONG;
    InquiryData: array[0..0] of Byte;
  end;
  SCSI_INQUIRY_DATA = TScsiInquiryData;
  PScsiInquiryData = ^TScsiInquiryData;
{$ALIGN OFF}


//=============================================================

// Open device to allow DeviceIoControl communications.
function GetPhysicalDriveHandle(DriveNum: Byte; DesireAccess: ACCESS_MASK): THandle;

// Get SCSI/IDE port handle.
function GetScsiPortHandle(PortNum: Byte; DesireAccess: ACCESS_MASK): THandle;

function GetScsiInquiryData(hDevice: THandle; var InquiryData: TScsiAdapterBusInfo; var dwSize: DWORD): BOOL;

function GetMediaType(hDevice: THandle): DEVICE_TYPE;

function GetMediaTypes(hDevice: THandle; var MediaTypes: TGetMediaTypes; var dwSize: DWORD): BOOL;

// Send an IDENTIFY command to the drive bDriveNum = 0-3
// bIDCmd = IDE_ID_FUNCTION or IDE_ATAPI_ID
function SmartIdentifyDirect(hDevice: THandle; bDriveNum: Byte; bIDCmd: Byte; var IdSector: TIdSector; var IdSectorSize: LongInt): BOOL;
function SmartIdentifyMiniport(hDevice: THandle; bTargetId: Byte; bIDCmd: Byte; var IdSector: TIdSector; var IdSectorSize: LongInt): BOOL;

// Send a SMART_ENABLE_SMART_OPERATIONS command to the drive bDriveNum = 0-3
function DoEnableSMART(hDevice: THandle; bDriveNum: Byte; var SCOP: TSendCmdOutParameters; var dwBytesReturned: DWORD): BOOL;

// Send a SMART_READ_ATTRIBUTE_VALUES command to the drive bDriveNum = 0-3
function DoReadAttributesCmd(hDevice: THandle; SCIP: TSendCmdInParameters; var SCOP: TSendCmdOutParameters; bDriveNum: Byte): BOOL;

// Change the WORD array to a BYTE array
procedure ChangeByteOrder(var Data; Size: Integer);


//=============================================================
implementation

{$IFDEF debug}
uses
  SysUtils; //, StringConv;
{$ENDIF}

var OSVersionInfo: TOSVersionInfo;
//---------------------------------------------------------------------
// Return INVALID_HANDLE_VALUE on error.
// Note: under NT/2000 Administrative priveleges are required

function GetPhysicalDriveHandle(DriveNum: Byte; DesireAccess: ACCESS_MASK): THandle;
var s: string;
begin
  OSVersionInfo.dwOSVersionInfoSize := SizeOf(OSVersionInfo);
  GetVersionEx(OSVersionInfo);
  if OSVersionInfo.dwPlatformId = VER_PLATFORM_WIN32_NT then // Windows NT, Windows 2000
  begin
    Str(DriveNum, s); // avoid SysUtils
    Result := CreateFile(PChar('\\.\PhysicalDrive' + s), DesireAccess, FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0);
  end
  else // Windows 95 OSR2, Windows 98
    Result := CreateFile('\\.\SMARTVSD', 0, 0, nil, CREATE_NEW, 0, 0);
{$IFDEF debug}
  if Result = INVALID_HANDLE_VALUE then OutputDebugString(PChar('Error on CreateFile: ' + SysErrorMessage(GetLastError)));
{$ENDIF}
end;
//-------------------------------------------------------------
// Get SCSI/IDE port handle.
// Windows NT/2000 only.
// Note: Administrative priveleges are NOT required

function GetScsiPortHandle(PortNum: Byte; DesireAccess: ACCESS_MASK): THandle;
var s: string;
begin
  Str(PortNum, s); // avoid SysUtils
  Result := CreateFile(PChar('\\.\Scsi' + s + ':'), DesireAccess, FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0);
{$IFDEF debug}
  if Result = INVALID_HANDLE_VALUE then OutputDebugString(PChar(SysErrorMessage(GetLastError)));
{$ENDIF}
end;
//-------------------------------------------------------------

function GetScsiInquiryData(hDevice: THandle; var InquiryData: TScsiAdapterBusInfo; var dwSize: DWORD): BOOL;
begin
  FillChar(InquiryData, dwSize, #0);
  Result := DeviceIoControl(hDevice, IOCTL_SCSI_GET_INQUIRY_DATA, nil, 0, @InquiryData, dwSize, dwSize, nil);
end;
//-------------------------------------------------------------

function GetMediaTypes(hDevice: THandle; var MediaTypes: TGetMediaTypes; var dwSize: DWORD): BOOL;
begin
  FillChar(MediaTypes, dwSize, #0);
  Result := DeviceIoControl(hDevice, IOCTL_STORAGE_GET_MEDIA_TYPES_EX, nil, 0, @MediaTypes, dwSize, dwSize, nil);
end;
//-------------------------------------------------------------

function GetMediaType(hDevice: THandle): STORAGE_MEDIA_TYPE;
const Size = 1024;
var dwBytesReturned: DWORD;
  bMediaTypes: array[0..Size - 1] of Byte;
  rMediaTypes: TGetMediaTypes absolute bMediaTypes;
begin
  FillChar(bMediaTypes, Size, #0);
  Result := 0;
  if DeviceIoControl(hDevice, IOCTL_STORAGE_GET_MEDIA_TYPES_EX, nil, 0, @bMediaTypes, Size, dwBytesReturned, nil) then with rMediaTypes do
      if MediaInfoCount > 0 then with MediaInfo[0].DeviceSpecific do
          case DeviceType of
            FILE_DEVICE_CD_ROM,
              FILE_DEVICE_DVD:
              Result := RemovableDiskInfo.MediaType;
            FILE_DEVICE_DISK:
              Result := DiskInfo.MediaType;
            FILE_DEVICE_TAPE:
              Result := TapeInfo.MediaType;
          end;
end;
//-------------------------------------------------------------
// SmartIdentifyDirect
//
// FUNCTION: Send an IDENTIFY command to the drive bDriveNum = 0-3
// bIDCmd = IDE_ID_FUNCTION or IDE_ATAPI_ID
//
// Note: work only with IDE device handle.

function SmartIdentifyDirect(hDevice: THandle; bDriveNum: Byte; bIDCmd: Byte; var IdSector: TIdSector; var IdSectorSize: LongInt): BOOL;
const BufferSize = SizeOf(TSendCmdOutParameters) + IDENTIFY_BUFFER_SIZE - 1;
var SCIP: TSendCmdInParameters;
  Buffer: array[0..BufferSize - 1] of Byte;
  SCOP: TSendCmdOutParameters absolute Buffer;
  dwBytesReturned: DWORD;
begin
  FillChar(SCIP, SizeOf(TSendCmdInParameters) - 1, #0);
  FillChar(Buffer, BufferSize, #0);
  dwBytesReturned := 0;
  IdSectorSize := 0;
 // Set up data structures for IDENTIFY command.
  with SCIP do
  begin
    cBufferSize := IDENTIFY_BUFFER_SIZE;
    bDriveNumber := bDriveNum;
    with irDriveRegs do
    begin
      bFeaturesReg := 0;
      bSectorCountReg := 1;
      bSectorNumberReg := 1;
      bCylLowReg := 0;
      bCylHighReg := 0;
      bDriveHeadReg := $A0 or ((bDriveNum and 1) shl 4);
      bCommandReg := bIDCmd; // The command can either be IDE identify or ATAPI identify.
    end;
  end;
  Result := DeviceIoControl(hDevice, DFP_RECEIVE_DRIVE_DATA, @SCIP, SizeOf(TSendCmdInParameters) - 1, @SCOP, BufferSize, dwBytesReturned, nil);
  if Result then
  begin
    IdSectorSize := dwBytesReturned - SizeOf(TSendCmdOutParameters) + 1;
    if IdSectorSize <= 0 then IdSectorSize := 0 else System.Move(SCOP.bBuffer, IdSector, IdSectorSize);
  end;
end;
//-------------------------------------------------------------
// Same as above but
//  - work only NT;
//  - work with cotroller or device handle.
// Note: Administrator priveleges are not required to open controller handle.

function SmartIdentifyMiniport(hDevice: THandle; bTargetId: Byte; bIDCmd: Byte; var IdSector: TIdSector; var IdSectorSize: LongInt): BOOL;
const
  DataLength = sizeof(TSendCmdInParameters) - 1 + IDENTIFY_BUFFER_SIZE;
  BufferLength = SizeOf(SRB_IO_CONTROL) + DataLength;
var cbBytesReturned: DWORD;
  pData: PSendCmdInParameters;
  Buffer: array[0..BufferLength] of Byte;
  srbControl: TSrbIoControl absolute Buffer;
begin
 // fill in srbControl fields
  FillChar(Buffer, BufferLength, #0);
  srbControl.HeaderLength := SizeOf(SRB_IO_CONTROL);
  System.Move('SCSIDISK', srbControl.Signature, 8);
  srbControl.Timeout := 2;
  srbControl.Length := DataLength;
  srbControl.ControlCode := IOCTL_SCSI_MINIPORT_IDENTIFY;
  pData := PSendCmdInParameters(PChar(@Buffer) + SizeOf(SRB_IO_CONTROL));
  with pData^ do
  begin
    cBufferSize := IDENTIFY_BUFFER_SIZE;
    bDriveNumber := bTargetId;
    with irDriveRegs do
    begin
      bFeaturesReg := 0;
      bSectorCountReg := 1;
      bSectorNumberReg := 1;
      bCylLowReg := 0;
      bCylHighReg := 0;
      bDriveHeadReg := $A0 or ((bTargetId and 1) shl 4);
      bCommandReg := bIDCmd; // The command can either be IDE identify or ATAPI identify.
    end;
  end;
  Result := DeviceIoControl(hDevice, IOCTL_SCSI_MINIPORT, @Buffer, BufferLength, @Buffer, BufferLength, cbBytesReturned, nil);
  if Result then
  begin
    IdSectorSize := cbBytesReturned - SizeOf(SRB_IO_CONTROL) - SizeOf(TSendCmdOutParameters) + 1;
{$IFDEF debug}
    OutputDebugString(PChar('SmartIdentifyMiniport: BufferLength=' + IntToStr(BufferLength) + ',cbBytesReturned=' + IntToStr(cbBytesReturned) + ',IdSectorSize=' + IntToStr(IdSectorSize)));
{$ENDIF}
    if IdSectorSize <= 0 then IdSectorSize := 0
    else
    begin
      if IdSectorSize > IDENTIFY_BUFFER_SIZE then IdSectorSize := IDENTIFY_BUFFER_SIZE;
      System.Move(PSendCmdOutParameters(pData)^.bBuffer, IdSector, IdSectorSize);
    end;
  end;
end;
//-------------------------------------------------------------
// DoEnableSMART
//
// FUNCTION: Send a SMART_ENABLE_SMART_OPERATIONS command to the drive bDriveNum = 0-3
//

function DoEnableSMART(hDevice: THandle; bDriveNum: Byte; var SCOP: TSendCmdOutParameters; var dwBytesReturned: DWORD): BOOL;
var SCIP: TSendCmdInParameters;
begin
  FillChar(SCIP, SizeOf(TSendCmdInParameters) - 1, #0);
  FillChar(SCOP, SizeOf(TSendCmdOutParameters) - 1, #0);
  dwBytesReturned := 0;

 // Set up data structures for Enable SMART Command.
  with SCIP do
  begin
    cBufferSize := 0;
    bDriveNumber := bDriveNum;
    with irDriveRegs do
    begin
      bFeaturesReg := SMART_ENABLE_SMART_OPERATIONS;
      bSectorCountReg := 1;
      bSectorNumberReg := 1;
      bCylLowReg := SMART_CYL_LOW;
      bCylHighReg := SMART_CYL_HI;
      bDriveHeadReg := $A0 or ((bDriveNum and 1) shl 4); // Compute the drive number.
      bCommandReg := IDE_EXECUTE_SMART_FUNCTION;
    end;
  end;
  Result := DeviceIoControl(hDevice, DFP_SEND_DRIVE_COMMAND, @SCIP, SizeOf(TSendCmdInParameters) - 1,
    @SCOP, SizeOf(TSendCmdOutParameters) - 1, dwBytesReturned, nil);
end;
//-------------------------------------------------------------
// DoReadAttributesCmd
//
// FUNCTION: Send a SMART_READ_ATTRIBUTE_VALUES command to the drive bDriveNum = 0-3
//

function DoReadAttributesCmd(hDevice: THandle; SCIP: TSendCmdInParameters; var SCOP: TSendCmdOutParameters; bDriveNum: Byte): BOOL;
var dwBytesReturned: DWORD;
begin
 // Set up data structures for Read Attributes SMART Command.
  with SCIP do
  begin
    cBufferSize := READ_ATTRIBUTE_BUFFER_SIZE;
    bDriveNumber := bDriveNum;
    with irDriveRegs do
    begin
      bFeaturesReg := SMART_READ_ATTRIBUTE_VALUES;
      bSectorCountReg := 1;
      bSectorNumberReg := 1;
      bCylLowReg := SMART_CYL_LOW;
      bCylHighReg := SMART_CYL_HI;
      bDriveHeadReg := $A0 or ((bDriveNum and 1) shl 4); // Compute the drive number.
      bCommandReg := IDE_EXECUTE_SMART_FUNCTION;
    end;
  end;
  Result := DeviceIoControl(hDevice, DFP_RECEIVE_DRIVE_DATA, @SCIP, SizeOf(TSendCmdInParameters) - 1,
    @SCOP, SizeOf(TSendCmdOutParameters) + READ_ATTRIBUTE_BUFFER_SIZE - 1, dwBytesReturned, nil);
end;
//-------------------------------------------------------------
// DoReadThresholdsCmd
//
// FUNCTION: Send a SMART_READ_ATTRIBUTE_THRESHOLDS command to the drive bDriveNum = 0-3
//

function DoReadThresholdsCmd(hDevice: THandle; SCIP: TSendCmdInParameters; var SCOP: TSendCmdOutParameters; bDriveNum: Byte): BOOL;
var dwBytesReturned: DWORD;
begin
 // Set up data structures for Read Thresholds SMART Command.
  with SCIP do
  begin
    cBufferSize := READ_THRESHOLD_BUFFER_SIZE;
    bDriveNumber := bDriveNum;
    with irDriveRegs do
    begin
      bFeaturesReg := SMART_READ_ATTRIBUTE_THRESHOLDS;
      bSectorCountReg := 1;
      bSectorNumberReg := 1;
      bCylLowReg := SMART_CYL_LOW;
      bCylHighReg := SMART_CYL_HI;
      bDriveHeadReg := $A0 or ((bDriveNum and 1) shl 4); // Compute the drive number.
      bCommandReg := IDE_EXECUTE_SMART_FUNCTION;
    end;
  end;
  Result := DeviceIoControl(hDevice, DFP_RECEIVE_DRIVE_DATA, @SCIP, SizeOf(TSendCmdInParameters) - 1,
    @SCOP, SizeOf(TSendCmdOutParameters) + READ_THRESHOLD_BUFFER_SIZE - 1, dwBytesReturned, nil);
end;
//---------------------------------------------------------------------
// Change the WORD array to a BYTE array
//---------------------------------------------------------------------

procedure ChangeByteOrder(var Data; Size: Integer);
var ptr: PChar;
  i: Integer;
  c: Char;
begin
  ptr := @Data;
  for i := 0 to (Size shr 1) - 1 do
  begin
    c := ptr^;
    ptr^ := (ptr + 1)^;
    (ptr + 1)^ := c;
    Inc(ptr, 2);
  end;
end;


end.
