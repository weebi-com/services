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
  final AddTicketAbstractRpc addTicketAbstractRpc;
  final DisableTicketAbstractRpc disableTicketAbstractRpc;
  final GetAllTicketsAbstractRpc getAllTicketsAbstractRpc;
  final RestoreTicketAbstractRpc restoreTicketAbstractRpc;
  final AddAllTicketsAbstractRpc addAllTicketsAbstractRpc;
  final DeleteAllTicketsAbstractRpc deleteAllTicketsAbstractRpc;
  final DeleteTicketAbstractRpc deleteTicketAbstractRpc;

  TicketsServiceAbstract(
    this.addTicketAbstractRpc,
    this.disableTicketAbstractRpc,
    this.getAllTicketsAbstractRpc,
    this.restoreTicketAbstractRpc,
    this.addAllTicketsAbstractRpc,
    this.deleteAllTicketsAbstractRpc,
    this.deleteTicketAbstractRpc,
  );
}

class TicketsServiceNoSembast implements TicketsServiceAbstract {
  const TicketsServiceNoSembast();

  @override
  AddAllTicketsAbstractRpc get addAllTicketsAbstractRpc =>
      AddAllTicketsFakeRpc();

  @override
  AddTicketAbstractRpc get addTicketAbstractRpc => AddTicketFakeRpc();

  @override
  DeleteAllTicketsAbstractRpc get deleteAllTicketsAbstractRpc =>
      DeleteAllTicketsFakeRpc();

  @override
  DeleteTicketAbstractRpc get deleteTicketAbstractRpc => DeleteTicketFakeRpc();

  @override
  DisableTicketAbstractRpc get disableTicketAbstractRpc =>
      DisableTicketFakeRpc();

  @override
  GetAllTicketsAbstractRpc get getAllTicketsAbstractRpc =>
      GetAllTicketsFakeRpc();

  @override
  RestoreTicketAbstractRpc get restoreTicketAbstractRpc =>
      RestoreTicketFakeRpc();
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
