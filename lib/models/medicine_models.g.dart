// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicineModelAdapter extends TypeAdapter<MedicineModel> {
  @override
  final int typeId = 0;

  @override
  MedicineModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicineModel()
      ..medicineName = fields[0] as String
      ..fromDate = fields[1] as DateTime
      ..toDate = fields[2] as DateTime
      ..diagnosis = fields[3] as String
      ..numberOfTimesInDay = fields[4] as int
      ..timeToTake = (fields[5] as List).cast<DateTime>()
      ..medicineType = fields[6] as MedicineType;
  }

  @override
  void write(BinaryWriter writer, MedicineModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.medicineName)
      ..writeByte(1)
      ..write(obj.fromDate)
      ..writeByte(2)
      ..write(obj.toDate)
      ..writeByte(3)
      ..write(obj.diagnosis)
      ..writeByte(4)
      ..write(obj.numberOfTimesInDay)
      ..writeByte(5)
      ..write(obj.timeToTake)
      ..writeByte(6)
      ..write(obj.medicineType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedicineModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
