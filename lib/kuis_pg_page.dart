import 'package:flutter/material.dart';
import 'pg_data.dart'; // Pastikan path impor ini benar

class KuisPGPage extends StatefulWidget {
  final int? modulIndex;

  const KuisPGPage({super.key, this.modulIndex});

  @override
  _KuisPGPageState createState() => _KuisPGPageState();
}

class _KuisPGPageState extends State<KuisPGPage> {
  int? selectedBabIndex;
  List<Map<String, dynamic>>? questions;

  int currentQuestionIndex = 0;
  int score = 0;
  int? selectedOptionIndex;
  bool isSubmitted = false;

  @override
  void initState() {
    super.initState();
    // Jika ada parameter modulIndex yang dikirim, kuis langsung terbuka
    if (widget.modulIndex != null) {
      selectedBabIndex = widget.modulIndex;
      questions = QuizData.getSoalByBab(selectedBabIndex!);
    }
  }

  void _selectBab(int index) {
    setState(() {
      selectedBabIndex = index;
      questions = QuizData.getSoalByBab(index);
      currentQuestionIndex = 0;
      score = 0;
      selectedOptionIndex = null;
      isSubmitted = false;
    });
  }

  void _handleAnswerSelection(int optionIndex) {
    if (!isSubmitted) {
      setState(() {
        selectedOptionIndex = optionIndex;
        isSubmitted = true;

        if (questions != null &&
            optionIndex == questions![currentQuestionIndex]["correctIndex"]) {
          score += (100 ~/ questions!.length).toInt();
        }
      });
    }
  }

  void _nextQuestion() {
    if (questions != null && currentQuestionIndex < questions!.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOptionIndex = null;
        isSubmitted = false;
      });
    } else {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Row(
          children: [
            Icon(Icons.military_tech, color: Colors.orangeAccent, size: 30),
            SizedBox(width: 8),
            Text("Kuis Selesai"),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Skor Akhir Anda", style: TextStyle(color: Colors.grey.shade600)),
            const SizedBox(height: 8),
            Text(
              "$score",
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
                selectedOptionIndex = null;
                isSubmitted = false;
              });
            },
            child: const Text("Ulangi Kuis"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text("Selesai", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 1. MENU PEMILIHAN BAB JIKA BELUM ADA INDEKS YANG DI-SET
    if (selectedBabIndex == null) {
      final availableIndices = QuizData.getAvailableBabIndices();
      return Scaffold(
        appBar: AppBar(
          title: const Text("Pilih Menu Kuis"),
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange.shade50, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: availableIndices.length,
            itemBuilder: (context, index) {
              final babIndex = availableIndices[index];
              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: Text(
                      "${babIndex + 1}",
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    QuizData.getBabName(babIndex),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Ketuk untuk memulai kuis."),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => _selectBab(babIndex),
                ),
              );
            },
          ),
        ),
      );
    }

    // 2. TAMPILAN KUIS
    if (questions == null || questions!.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text("Kuis Kosong")),
        body: const Center(child: Text("Tidak ada soal untuk bab ini.")),
      );
    }

    final currentQuestion = questions![currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Kuis Pilihan Ganda (Bab ${selectedBabIndex! + 1})"),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (widget.modulIndex != null) {
              Navigator.pop(context);
            } else {
              setState(() {
                selectedBabIndex = null; // Kembali ke menu pemilihan bab
              });
            }
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                value: (currentQuestionIndex + 1) / questions!.length,
                backgroundColor: Colors.grey.shade200,
                color: Colors.orangeAccent,
                minHeight: 8,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pertanyaan ${currentQuestionIndex + 1} dari ${questions!.length}",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  ),
                  Chip(
                    label: Text(
                      "Skor: $score",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Colors.orangeAccent,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    currentQuestion["question"],
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: (currentQuestion["options"] as List).length,
                  itemBuilder: (context, index) {
                    final isCorrectOption =
                        index == currentQuestion["correctIndex"];
                    final isSelectedOption = index == selectedOptionIndex;

                    Color tileColor = Colors.white;
                    if (isSubmitted) {
                      if (isCorrectOption) {
                        tileColor = Colors.green.shade50;
                      } else if (isSelectedOption) {
                        tileColor = Colors.red.shade50;
                      }
                    } else if (isSelectedOption) {
                      tileColor = Colors.orange.shade50;
                    }

                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: tileColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isSelectedOption
                              ? Colors.orangeAccent
                              : Colors.grey.shade300,
                          width: 1.5,
                        ),
                      ),
                      child: ListTile(
                        title: Text(currentQuestion["options"][index]),
                        onTap: isSubmitted
                            ? null
                            : () => _handleAnswerSelection(index),
                      ),
                    );
                  },
                ),

              // Bagian Hint / Pembahasan, hanya muncul ketika jawaban sudah disubmit
              if (isSubmitted) ...[
                Card(
                  color: Colors.blue.shade50,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.lightbulb_outline,
                            color: Colors.blueAccent),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hint / Pembahasan",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),
                              ),
                              const SizedBox(height: 4),
                              Text(currentQuestion["hint"] ??
                                  "Tidak ada pembahasan."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],

              // Tombol Navigasi
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: selectedOptionIndex == null ? null : _nextQuestion,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    currentQuestionIndex < questions!.length - 1
                        ? "Pertanyaan Selanjutnya"
                        : "Lihat Hasil / Skor Akhir",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}