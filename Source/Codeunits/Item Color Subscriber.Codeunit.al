codeunit 1000019 "Item Color Subscriber"
{
    // Подписываемся на событие типа Table — OnBeforeInsertEvent для Item
    [EventSubscriber(ObjectType::Table, Database::Item, 'OnBeforeInsertEvent', '', true, true)]
    local procedure OnItemBeforeInsert(var Rec: Record Item; RunTrigger: Boolean)
    var
        SetupRec: Record "Item Color Setup";
    begin
        // Если поле уже заполнено — ничего не делаем
        if Rec."Color Code" <> '' then
            exit;


        // Пытаемся получить первую запись setup-а (если есть)
        if SetupRec.FindFirst() then begin
            // Копируем значение из setup в запись Item до её вставки в БД
            Rec."Color Code" := SetupRec."Default Color Code";
            // Никаких MODIFY не нужно — мы на OnBeforeInsert: изменения попадут в DB вместе с вставкой
        end;
    end;
} ы
