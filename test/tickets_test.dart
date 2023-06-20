import 'package:models_base/utils.dart';
import 'package:models_weebi/common.dart';
import 'package:models_weebi/weebi_models.dart';
import 'package:sembast/sembast_memory.dart';
import 'package:services_weebi/src/db_wrappers.dart';
import 'package:services_weebi/src/tickets.dart';
import 'package:test/test.dart';

void main() {
  test('tickets', () async {
    final now = DateTime.now();
    // ignore: missing_required_param
    final ticket = TicketWeebi(
      id: 1,
      shopId: 'entrepot',
      items: [],
      taxe: TaxWeebi.noTax,
      promo: 0.0,
      comment: 'no comment',
      received: 0,
      date: WeebiDates.febStart,
      paiementType: PaiementType.cash,
      ticketType: TicketType.sell,
      contactInfo: '0',
      status: true,
      statusUpdateDate: now,
      creationDate: now,
      oid: '',
      discountAmount: 0,
    );
    // ignore: missing_required_param
    final ticket2 = TicketWeebi(
      comment: '',
      oid: '',
      taxe: TaxWeebi.noTax,
      id: 2,
      shopId: 'shopId',
      creationDate: now.add(Duration(seconds: 4)),
      paiementType: PaiementType.cash,
      ticketType: TicketType.sell,
      contactInfo: '0',
      promo: 0.0,
      received: 0,
      items: [ItemCartWeebi(() => ArticleRetail.dummy, 0)],
      status: true,
      date: now.add(Duration(hours: 1)),
      statusUpdateDate: now.add(Duration(hours: 1)),
    );

    final db = await databaseFactoryMemory.openDatabase('test.db');
    final service =
        TicketsServiceInstantiater.instTicketsStoreSembast(DbTickets(db));

    group('test tickets store', () {
      test('create_ticket', () async {
        final t = await service.addTicketRpc.request(ticket);
        final t2 = await service.addTicketRpc.request(ticket2);
        expect(t, ticket);
        expect(t2, ticket2);
        final tickets = await service.getAllTicketsRpc.request([]);
        expect(tickets.length, 2);
      });
      test('disable_ticket', () async {
        final updatedTicket = await service.disableTicketRpc.request(ticket);
        expect(updatedTicket.status, false);
        final tickets = await service.getAllTicketsRpc.request([]);
        expect(tickets.length, 2);
      });
      test('restore_ticket', () async {
        final updatedTicket = await service.restoreTicketRpc.request(ticket);
        expect(updatedTicket.status, true);
        final tickets = await service.getAllTicketsRpc.request([]);
        expect(tickets.length, 2);
      });

      test('delete_all', () async {
        final tickets = await service.getAllTicketsRpc.request([]);
        await service.deleteAllTicketsRpc.request(tickets);
        final tickets2 = await service.getAllTicketsRpc.request([]);
        expect(tickets2.isEmpty, true);
      });
      test('save_all', () async {
        await service.addAllTicketsRpc.request(listTickets.toSet());
        final tickets = await service.getAllTicketsRpc.request([]);
        expect(tickets.length, 3);
      });
    });
  });
}

Iterable<TicketWeebi> listTickets = {
  TicketWeebi(
    id: 1,
    shopId: 'entrepot',
    items: [],
    taxe: TaxWeebi.noTax,
    promo: 0.0,
    comment: 'no comment',
    received: 0,
    date: DateTime(2020, 02, 02),
    paiementType: PaiementType.nope,
    ticketType: TicketType.spendDeferred,
    contactInfo: '0',
    status: true,
    statusUpdateDate: DateTime.now(),
    creationDate: DateTime.now(),
    oid: '',
  ),
  TicketWeebi(
      oid: "",
      id: 2,
      shopId: 'entrepot',
      items: [],
      taxe: TaxWeebi.noTax,
      promo: 0.0,
      comment: 'no comment',
      received: 0,
      date: DateTime.now(),
      paiementType: PaiementType.nope,
      ticketType: TicketType.spendDeferred,
      contactInfo: '0',
      status: true,
      statusUpdateDate: DateTime.now(),
      creationDate: DateTime.now(),
      discountAmount: 0),
  TicketWeebi(
      oid: '',
      id: 3,
      shopId: 'entrepot',
      items: [],
      taxe: TaxWeebi.noTax,
      promo: 0.0,
      comment: 'no comment',
      received: 0,
      date: DateTime.now(),
      paiementType: PaiementType.nope,
      ticketType: TicketType.spendDeferred,
      contactInfo: '0',
      status: true,
      statusUpdateDate: DateTime.now(),
      creationDate: DateTime.now(),
      discountAmount: 0),
};
