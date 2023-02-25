class Project{
  final String title; // ชื่อโครงการขอรับบิรจาค
  final String description; // คำอธิบายเกี่ยวกับโครงการ
  final int targetAmount; //ยอดเงินขอรับบริจาคที่ต้องการ
  final int duration;// ระยะเวลาโครงการ
  final int receiveAmount;//จำนวนเงินที่ได้รับบริจาคมาแล้ว
  final int donateCount; //จำนวนครั้งที่มีการบริจาคเข้ามา
  final String imageUrl;// URL รูปภาพ
  final String projectDuration; // ระยะเวลาโครงการ
  final String projectArea; // พื้นที่ดำเนินโครงการ



  Project({required this.title,
    required this.description,
    required this.targetAmount,
    required this.duration,
    required this.receiveAmount,
    required this.donateCount,
    required this.imageUrl,
    required this.projectDuration,
    required this.projectArea,

  });


}