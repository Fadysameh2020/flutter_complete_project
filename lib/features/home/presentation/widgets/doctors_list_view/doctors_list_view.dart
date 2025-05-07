import 'package:flutter/material.dart';
import 'package:flutter_complete_project/features/home/data/model/specialization_model.dart';

import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctor?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}