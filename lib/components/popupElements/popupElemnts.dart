import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ElementBottomSheet extends StatelessWidget {
  const ElementBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const Padding(
          padding: EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_month,
                      size: 30, color: Color(0xFFABABAB)),
                  SizedBox(width: 23),
                  Text(
                    'Date',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                        color: Color(0xFFABABAB)),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFABABAB),
                size: 20,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      const  Padding(
          padding: EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.layers_outlined ,
                      size: 30, color: Color(0xFFABABAB)),
                  SizedBox(width: 23),
                  Text(
                    'Type',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                        color: Color(0xFFABABAB)),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFABABAB),
                size: 20,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/priority.svg',
                    width: 20, height: 20,
                  ),
                 const SizedBox(width: 23),
                 const Text(
                    'Status',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                        color: Color(0xFFABABAB)),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFABABAB),
                size: 20,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/category.svg',
                    width: 20, height: 20,
                  ),
                  const SizedBox(width: 23),
                  const Text(
                    'Category',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                        color: Color(0xFFABABAB)),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFABABAB),
                size: 20,
              ),
            ],
          ),
        ),
       const SizedBox(height: 15),
         Padding(
          padding:const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/subcategory.svg',
                    width: 20, height: 20,
                  ),
                  const SizedBox(width: 23),
                 const  Text(
                    'Subcategory',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                        color: Color(0xFFABABAB)),
                  ),
                ],
              ),
             const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFABABAB),
                size: 20,
              ),
            ],
          ),
        ),
      const  SizedBox(height: 16),
         Padding(
          padding: EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/tag.svg',
                    width: 20, height: 20,
                  ),
                const  SizedBox(width: 23),
                 const Text(
                    'Tags',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                        color: Color(0xFFABABAB)),
                  ),
                ],
              ),
             const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFABABAB),
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
