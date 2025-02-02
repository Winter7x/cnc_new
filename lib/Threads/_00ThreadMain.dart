import 'package:flutter/material.dart';
import '01Unified_UNC.dart';
import '02Unified_UNF.dart';
import '03Unified_UNEF.dart';
import '04_M_coarse.dart';
import '05_M_fine.dart';
import '06_NPT.dart';
import '07_NPTF.dart';
import '08_BSP.dart';
import '09_ACME.dart';
import '10_BSW.dart';
import '11_BSF.dart';

class ThreadsScreen extends StatelessWidget {
  const ThreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Threads',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // First Row with Unified Threads and other types
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildTile(
                  context,
                  initials: 'UNC', // Initials for Unified Threads (UNC)
                  label: 'Unified Threads (UNC)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UnifiedUNCThreadsScreen(),
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'UNF', // Initials for Unified Threads (UNF)
                  label: 'Unified Threads (UNF)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UnifiedUNFThreadsScreen(),
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'UNE', // Initials for Unified Threads (UNEF)
                  label: 'Unified Threads (UNEF)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UnifiedUNEFThreadsScreen(),
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'NPT', // Initials for National Pipe Threads (NPT)
                  label: 'National Pipe Threads (NPT)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NPTThreadsScreen(),
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'NPTF', // Initials for National Pipe Threads (NPTF)
                  label: 'National Pipe Threads (NPTF)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NPTFThreadsScreen(),
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'BSP', // Initials for British Standard Pipe
                  label: 'British Standard Pipe (BSP)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BSPThreadsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),

            // Second Row with Metric Coarse and Metric Fine
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildTile(
                  context,
                  initials: 'MFC', // Initials for Metric Coarse
                  label: 'Metric Coarse',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MetricCoarseThreadsScreen(), // Replace with your actual screen
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'MFF', // Initials for Metric Fine
                  label: 'Metric Fine',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MetricFineThreadsScreen(), // Replace with your actual screen
                      ),
                    );
                  },
                ),
              ],
            ),

            // New Row with Whitworth Threads BSW and BSF
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildTile(
                  context,
                  initials: 'ACM', // Initials for Acme Threads
                  label: 'Acme Threads',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AcmeThreadsScreen(),
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'BSW', // Initials for Whitworth Threads (BSW)
                  label: 'Whitworth Threads (BSW)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BSWThreadsScreen(),
                      ),
                    );
                  },
                ),
                _buildTile(
                  context,
                  initials: 'BSF', // Initials for Whitworth Threads (BSF)
                  label: 'Whitworth Threads (BSF)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BSFThreadsScreen(),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, {String? initials, required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(initials!, style: TextStyle(fontSize: 25, color: Colors.teal)), // Updated text size to 25
              )),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
