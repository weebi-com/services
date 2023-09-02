import 'package:models_weebi/test_data.dart';
import 'package:sembast/sembast_memory.dart';
import 'package:services_weebi/src/db_wrappers.dart';
import 'package:services_weebi/src/tickets.dart';
import 'package:test/test.dart';

void main() async {
  final now = DateTime.now();

  final db = await databaseFactoryMemory.openDatabase('test.db');
  final service =
      TicketsServiceInstantiater.instTicketsStoreSembast(DbTickets(db));

  group('test tickets store', () {
    test('create_ticket', () async {
      final t = await service.addTicketRpc.request(TestTicketsData().ticket1);
      final t2 = await service.addTicketRpc.request(TestTicketsData().ticket2);
      expect(t, TestTicketsData().ticket1);
      expect(t2, TestTicketsData().ticket2);
      final tickets = await service.getAllTicketsRpc.request([]);
      expect(tickets.length, 2);
    });
    test('disable_ticket', () async {
      final updatedTicket =
          await service.disableTicketRpc.request(TestTicketsData().ticket1);
      expect(updatedTicket.status, false);
      final tickets = await service.getAllTicketsRpc.request([]);
      expect(tickets.length, 2);
    });
    test('restore_ticket', () async {
      final updatedTicket =
          await service.restoreTicketRpc.request(TestTicketsData().ticket1);
      expect(updatedTicket.status, true);
      final tickets = await service.getAllTicketsRpc.request([]);
      expect(tickets.length, 2);
    });

    test('delete_all', () async {
      final tickets = await service.getAllTicketsRpc.request([]);
      await service.deleteAllTicketsRpc.request(tickets);

      await Future.delayed(Duration(seconds: 1));
      final tickets2 = await service.getAllTicketsRpc.request([]);
      expect(tickets2.isEmpty, true);
    });
    test('save_all', () async {
      await service.addAllTicketsRpc.request(TestTicketsData().ticketsSet);
      final tickets = await service.getAllTicketsRpc.request([]);
      expect(tickets.length, 3);
    });
  });
}
