// Project imports:
import 'package:services_weebi/src/ticket/add_all_tickets.dart';
import 'package:services_weebi/src/ticket/add_ticket.dart';
import 'package:services_weebi/src/ticket/delete_ticket.dart';
import 'package:services_weebi/src/ticket/delete_tickets.dart';
import 'package:services_weebi/src/ticket/disable_ticket.dart';
import 'package:services_weebi/src/ticket/get_tickets.dart';
import 'package:services_weebi/src/ticket/restore_ticket.dart';

// deleteTickets is still to be thought about
// risky
class TicketsService {
  static final count = [
    AddTicketRpc,
    DisableTicketRpc,
    GetAllTicketsRpc,
    RestoreTicketRpc,
    AddAllTicketsRpc,
    DeleteAllTicketsRpc,
    DeleteTicketRpc,
  ].length;
  final AddTicketRpc addTicketRpc;
  final DisableTicketRpc disableTicketRpc;
  final GetAllTicketsRpc getAllTicketsRpc;
  final RestoreTicketRpc restoreTicketRpc;
  final AddAllTicketsRpc addAllTicketsRpc;
  final DeleteAllTicketsRpc deleteAllTicketsRpc;
  final DeleteTicketRpc deleteTicketRpc;

  TicketsService(
    this.addTicketRpc,
    this.disableTicketRpc,
    this.getAllTicketsRpc,
    this.restoreTicketRpc,
    this.addAllTicketsRpc,
    this.deleteAllTicketsRpc,
    this.deleteTicketRpc,
  );
}
