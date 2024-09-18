import 'dart:async';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:text_app/examples/calender.dart';
import 'package:text_app/examples/certificate.dart';
import 'package:text_app/examples/document.dart';
import 'package:text_app/examples/invoice.dart';
import 'package:text_app/examples/report.dart';
import 'package:text_app/examples/resume.dart';

import 'data.dart';

const examples = <Example>[
  Example('RÉSUMÉ', 'resume.dart', generateResume),
  Example('DOCUMENT', 'document.dart', generateDocument),
  Example('INVOICE', 'invoice.dart', generateInvoice),
  Example('REPORT', 'report.dart', generateReport),
  Example('CALENDAR', 'calendar.dart', generateCalendar),
  Example('CERTIFICATE', 'certificate.dart', generateCertificate, true),
];

typedef LayoutCallbackWithData = Future<Uint8List> Function(
    PdfPageFormat pageFormat, CustomData data);

class Example {
  const Example(this.name, this.file, this.builder, [this.needsData = false]);

  final String name;

  final String file;

  final LayoutCallbackWithData builder;

  final bool needsData;
}
