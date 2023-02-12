// Project imports:
import 'package:services_weebi/src/ticket/add_all_tickets.dart';
import 'package:services_weebi/src/ticket/add_ticket.dart';
import 'package:services_weebi/src/ticket/delete_ticket.dart';
import 'package:services_weebi/src/ticket/delete_tickets.dart';
import 'package:services_weebi/src/ticket/disable_ticket.dart';
import 'package:services_weebi/src/ticket/get_tickets.dart';
import 'package:services_weebi/src/ticket/restore_ticket.dart';
import 'package:services_weebi/src/ticket_no_sembast/add_all_tickets.dart';
import 'package:services_weebi/src/ticket_no_sembast/add_ticket.dart';
import 'package:services_weebi/src/ticket_no_sembast/delete_ticket.dart';
import 'package:services_weebi/src/ticket_no_sembast/delete_tickets.dart';
import 'package:services_weebi/src/ticket_no_sembast/disable_ticket.dart';
import 'package:services_weebi/src/ticket_no_sembast/get_tickets.dart';
import 'package:services_weebi/src/ticket_no_sembast/restore_ticket.dart';

abstract class TicketsServiceAbstract {
  final AddTicketAbstractRpc addTicketRpc;
  final DisableTicketAbstractRpc disableTicketRpc;
  final GetAllTicketsAbstractRpc getAllTicketsRpc;
  final RestoreTicketAbstractRpc restoreTicketRpc;
  final AddAllTicketsAbstractRpc addAllTicketsRpc;
  final DeleteAllTicketsAbstractRpc deleteAllTicketsRpc;
  final DeleteTicketAbstractRpc deleteTicketRpc;

  TicketsServiceAbstract(
    this.addTicketRpc,
    this.disableTicketRpc,
    this.getAllTicketsRpc,
    this.restoreTicketRpc,
    this.addAllTicketsRpc,
    this.deleteAllTicketsRpc,
    this.deleteTicketRpc,
  );
}

class TicketsServiceNoSembast implements TicketsServiceAbstract {
  const TicketsServiceNoSembast();

  @override
  AddAllTicketsAbstractRpc get addAllTicketsRpc => AddAllTicketsFakeRpc();

  @override
  AddTicketAbstractRpc get addTicketRpc => AddTicketFakeRpc();

  @override
  DeleteAllTicketsAbstractRpc get deleteAllTicketsRpc =>
      DeleteAllTicketsFakeRpc();

  @override
  DeleteTicketAbstractRpc get deleteTicketRpc => DeleteTicketFakeRpc();

  @override
  DisableTicketAbstractRpc get disableTicketRpc => DisableTicketFakeRpc();

  @override
  GetAllTicketsAbstractRpc get getAllTicketsRpc => GetAllTicketsFakeRpc();

  @override
  RestoreTicketAbstractRpc get restoreTicketRpc => RestoreTicketFakeRpc();
}

class TicketsService extends TicketsServiceAbstract {
  static final count = 7;

  TicketsService(
    AddTicketRpc addTicketRpc,
    DisableTicketRpc disableTicketRpc,
    GetAllTicketsRpc getAllTicketsRpc,
    RestoreTicketRpc restoreTicketRpc,
    AddAllTicketsRpc addAllTicketsRpc,
    DeleteAllTicketsRpc deleteAllTicketsRpc,
    DeleteTicketRpc deleteTicketRpc,
  ) : super(
          addTicketRpc,
          disableTicketRpc,
          getAllTicketsRpc,
          restoreTicketRpc,
          addAllTicketsRpc,
          deleteAllTicketsRpc,
          deleteTicketRpc,
        );
}
