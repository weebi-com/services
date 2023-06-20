// Project imports:
import 'package:services_weebi/src/db_wrappers.dart';
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
  static const count = 7;
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

class TicketsService extends TicketsServiceAbstract {
  static const count = TicketsServiceAbstract.count;

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

abstract class TicketsServiceInstantiater {
  static get noPersistence => TicketsServiceNoSembast();

  static TicketsService instTicketsStoreSembast(DbTickets db) {
    final AddTicketRpc createTicketRpc = AddTicketRpc(db);
    final DisableTicketRpc disableTicketRpc = DisableTicketRpc(db);
    final GetAllTicketsRpc getTicketsRpc = GetAllTicketsRpc(db);
    final RestoreTicketRpc restoreTicketRpc = RestoreTicketRpc(db);
    final DeleteAllTicketsRpc deleteAllTicketsRpc = DeleteAllTicketsRpc(db);
    final AddAllTicketsRpc saveAllTicketsRpc = AddAllTicketsRpc(db);
    final DeleteTicketRpc deleteTicketRpc = DeleteTicketRpc(db);

    return TicketsService(
      createTicketRpc,
      disableTicketRpc,
      getTicketsRpc,
      restoreTicketRpc,
      saveAllTicketsRpc,
      deleteAllTicketsRpc,
      deleteTicketRpc,
    );
  }
}

class TicketsServiceNoSembast implements TicketsServiceAbstract {
  const TicketsServiceNoSembast();

  @override
  get addAllTicketsRpc => AddAllTicketsFakeRpc();

  @override
  get addTicketRpc => AddTicketFakeRpc();

  @override
  get deleteAllTicketsRpc => DeleteAllTicketsFakeRpc();

  @override
  get deleteTicketRpc => DeleteTicketFakeRpc();

  @override
  get disableTicketRpc => DisableTicketFakeRpc();

  @override
  get getAllTicketsRpc => GetAllTicketsFakeRpc();

  @override
  get restoreTicketRpc => RestoreTicketFakeRpc();
}
