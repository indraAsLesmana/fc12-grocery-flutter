class TrackRecordModel {
  final String title;
  final TrackRecordStatus status;
  final bool isActive;
  final DateTime updatedAt;

  TrackRecordModel({
    required this.title,
    required this.status,
    this.isActive = false,
    required this.updatedAt,
  });

  String get formattedDate =>
      '${updatedAt.day} ${_monthName(updatedAt.month)} ${updatedAt.year}';

  String get formattedDateShort {
    final now = DateTime.now();
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    if (updatedAt.year == now.year &&
        updatedAt.month == now.month &&
        updatedAt.day == now.day) {
      return 'Hari Ini';
    } else if (updatedAt.year == yesterday.year &&
        updatedAt.month == yesterday.month &&
        updatedAt.day == yesterday.day) {
      return 'Kemarin';
    } else {
      return '${updatedAt.day} ${_monthAbbreviation(updatedAt.month)}';
    }
  }

  String get formattedTime =>
      '${updatedAt.hour}:${updatedAt.minute.toString().padLeft(2, '0')}';

  String _monthName(int month) {
    switch (month) {
      case 1:
        return 'Januari';
      case 2:
        return 'Februari';
      case 3:
        return 'Maret';
      case 4:
        return 'April';
      case 5:
        return 'Mei';
      case 6:
        return 'Juni';
      case 7:
        return 'Juli';
      case 8:
        return 'Agustus';
      case 9:
        return 'September';
      case 10:
        return 'Oktober';
      case 11:
        return 'November';
      case 12:
        return 'Desember';
      default:
        return '';
    }
  }

  String _monthAbbreviation(int month) {
    final String monthName = _monthName(month);
    if (monthName.length >= 3) {
      return monthName.substring(0, 3);
    } else {
      return monthName;
    }
  }
}

enum TrackRecordStatus {
  belumBayar('Belum Bayar'),
  dikemas('Dikemas'),
  dikirim('Dikirim'),
  selesai('Selesai');

  final String value;
  const TrackRecordStatus(this.value);
}
