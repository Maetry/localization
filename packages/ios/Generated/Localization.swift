// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Loc {
  public enum AppIntent {
    public enum OpenMirror {
      public static let description = Loc.tr("Localizable", "app_intent.open_mirror.description", fallback: "Opens the Mirror screen")
      public static let title = Loc.tr("Localizable", "app_intent.open_mirror.title", fallback: "Open Mirror")
    }
  }
  public enum Appclip {
    public static let tagline = Loc.tr("Localizable", "appclip.tagline", fallback: "Simple tool for business management")
    public static let welcomeTo = Loc.tr("Localizable", "appclip.welcome_to", fallback: "Welcome to")
  }
  public enum Assignment {
    public enum Edit {
      public static let clientTitle = Loc.tr("Localizable", "assignment.edit.client_title", fallback: "Клиент")
      public static let description = Loc.tr("Localizable", "assignment.edit.description", fallback: "Изменить процедуру, мастера или время")
      public static let priceTitle = Loc.tr("Localizable", "assignment.edit.price_title", fallback: "Цена")
      public static let saveAction = Loc.tr("Localizable", "assignment.edit.save_action", fallback: "Сохранить изменения")
      public static let screenTitle = Loc.tr("Localizable", "assignment.edit.screen_title", fallback: "Редактирование записи")
      public static let title = Loc.tr("Localizable", "assignment.edit.title", fallback: "Редактировать запись")
    }
    public enum Settlement {
      public static let action = Loc.tr("Localizable", "assignment.settlement.action", fallback: "Рассчитать")
    }
    public enum Timeline {
      public static let cancelled = Loc.tr("Localizable", "assignment.timeline.cancelled", fallback: "Запись отменена")
      public static let cancelledByClient = Loc.tr("Localizable", "assignment.timeline.cancelled_by_client", fallback: "Запись отменил клиент")
      public static let cancelledBySalon = Loc.tr("Localizable", "assignment.timeline.cancelled_by_salon", fallback: "Запись отменил салон")
      public static let cancelledBySystem = Loc.tr("Localizable", "assignment.timeline.cancelled_by_system", fallback: "Запись отменена системой")
      public static let completed = Loc.tr("Localizable", "assignment.timeline.completed", fallback: "Визит завершён")
      public static let created = Loc.tr("Localizable", "assignment.timeline.created", fallback: "Запись создана")
      public static let empty = Loc.tr("Localizable", "assignment.timeline.empty", fallback: "События по этой записи появятся здесь, когда она будет подтверждена или изменена.")
      public static let expired = Loc.tr("Localizable", "assignment.timeline.expired", fallback: "Срок записи истёк")
      public static let newTimeLabel = Loc.tr("Localizable", "assignment.timeline.new_time_label", fallback: "Новое время")
      public static let noShow = Loc.tr("Localizable", "assignment.timeline.no_show", fallback: "Клиент не пришёл")
      public static let pending = Loc.tr("Localizable", "assignment.timeline.pending", fallback: "Ожидает подтверждения")
      public static let pendingClient = Loc.tr("Localizable", "assignment.timeline.pending_client", fallback: "Ожидает подтверждения клиента")
      public static let pendingDescription = Loc.tr("Localizable", "assignment.timeline.pending_description", fallback: "Сейчас запись ожидает следующего действия и ещё не имеет истории визита.")
      public static let pendingStaff = Loc.tr("Localizable", "assignment.timeline.pending_staff", fallback: "Ожидает подтверждения салона")
      public static let rejected = Loc.tr("Localizable", "assignment.timeline.rejected", fallback: "Запись отклонена")
      public static let rescheduled = Loc.tr("Localizable", "assignment.timeline.rescheduled", fallback: "Запись перенесена")
      public static let servicesLabel = Loc.tr("Localizable", "assignment.timeline.services_label", fallback: "Услуги")
      public static let started = Loc.tr("Localizable", "assignment.timeline.started", fallback: "Визит начат")
      public static let timeLabel = Loc.tr("Localizable", "assignment.timeline.time_label", fallback: "Время")
      public static let title = Loc.tr("Localizable", "assignment.timeline.title", fallback: "История записи")
    }
  }
  public enum Booking {
    public enum Status {
      public static let cancelled = Loc.tr("Localizable", "booking.status.cancelled", fallback: "Cancelled")
      public static let confirmed = Loc.tr("Localizable", "booking.status.confirmed", fallback: "Confirmed")
      public static let pendingClient = Loc.tr("Localizable", "booking.status.pending_client", fallback: "Pending your confirmation")
      public static let pendingMaster = Loc.tr("Localizable", "booking.status.pending_master", fallback: "Pending professional confirmation")
    }
  }
  public enum Cell {
    public enum Contact {
      public static let selectPhoneNumber = Loc.tr("Localizable", "cell.contact.select_phone_number", fallback: "Select number")
    }
  }
  public enum Creatable {
    public enum Appointment {
      public static let additionalFieldsPlaceholder = Loc.tr("Localizable", "creatable.appointment.additional_fields_placeholder", fallback: "Здесь появятся скидка и другие параметры.")
      public static let afternoon = Loc.tr("Localizable", "creatable.appointment.afternoon", fallback: "Afternoon")
      public static let chooseCustomer = Loc.tr("Localizable", "creatable.appointment.choose_customer", fallback: "Please select the client for whom the appointment is being created")
      public static let client = Loc.tr("Localizable", "creatable.appointment.client", fallback: "Customer")
      public static let clientSelectionTitle = Loc.tr("Localizable", "creatable.appointment.client_selection_title", fallback: "Выбор клиента")
      public static let collapseFieldsAction = Loc.tr("Localizable", "creatable.appointment.collapse_fields_action", fallback: "Скрыть дополнительные поля")
      public static let createAction = Loc.tr("Localizable", "creatable.appointment.create_action", fallback: "Создать")
      public static let creatingAction = Loc.tr("Localizable", "creatable.appointment.creating_action", fallback: "Создание...")
      public static let customDurationTitle = Loc.tr("Localizable", "creatable.appointment.custom_duration_title", fallback: "Длительность")
      public static let date = Loc.tr("Localizable", "creatable.appointment.date", fallback: "Date")
      public static let dayUnavailable = Loc.tr("Localizable", "creatable.appointment.day_unavailable", fallback: "Unfortunately, booking is not available on this day — please choose another date")
      public static let evening = Loc.tr("Localizable", "creatable.appointment.evening", fallback: "Evening")
      public static let expandFieldsAction = Loc.tr("Localizable", "creatable.appointment.expand_fields_action", fallback: "Дополнительные поля")
      public static let extendedCreateAction = Loc.tr("Localizable", "creatable.appointment.extended_create_action", fallback: "Расширенное создание")
      public static let manualDateTitle = Loc.tr("Localizable", "creatable.appointment.manual_date_title", fallback: "Ввести дату вручную")
      public static let morning = Loc.tr("Localizable", "creatable.appointment.morning", fallback: "Morning")
      public static let night = Loc.tr("Localizable", "creatable.appointment.night", fallback: "Night")
      public static let notSelected = Loc.tr("Localizable", "creatable.appointment.not_selected", fallback: "Не выбрано")
      public static let procedure = Loc.tr("Localizable", "creatable.appointment.procedure", fallback: "Procedure")
      public static let quickCreateAction = Loc.tr("Localizable", "creatable.appointment.quick_create_action", fallback: "Быстрое создание")
      public static let selectExecutorTitle = Loc.tr("Localizable", "creatable.appointment.select_executor_title", fallback: "Выберите мастера")
      public static let selectProcedure = Loc.tr("Localizable", "creatable.appointment.select_procedure", fallback: "Choose service")
      public static let selectProcedureFirstMessage = Loc.tr("Localizable", "creatable.appointment.select_procedure_first_message", fallback: "To select a date, you first need to choose a procedure")
      public static let selectTime = Loc.tr("Localizable", "creatable.appointment.select_time", fallback: "Specify convenient time for visit")
      public static let serviceSelectionTitle = Loc.tr("Localizable", "creatable.appointment.service_selection_title", fallback: "Выбор услуги и мастера")
      public static let timeSelectionTitle = Loc.tr("Localizable", "creatable.appointment.time_selection_title", fallback: "Время")
      public static let title = Loc.tr("Localizable", "creatable.appointment.title", fallback: "New appointment")
    }
    public enum Auth {
      public static let addRecoveryDescription = Loc.tr("Localizable", "creatable.auth.add_recovery_description", fallback: "Please provide your phone number or email.\nThis is necessary so that you can always restore access to your account.")
      public static let addRecoveryTitle = Loc.tr("Localizable", "creatable.auth.add_recovery_title", fallback: "Add recovery method")
      public static let addWorkplace = Loc.tr("Localizable", "creatable.auth.add_workplace", fallback: "Add a workstation to continue registration")
      public static let enterName = Loc.tr("Localizable", "creatable.auth.enter_name", fallback: "Enter your name")
      public static let laterLogo = Loc.tr("Localizable", "creatable.auth.later_logo", fallback: "If you don't have a suitable photo now. You can always add it later in profile settings.")
      public static let placeholder = Loc.tr("Localizable", "creatable.auth.placeholder", fallback: "Name")
      public static func privacy(_ p1: Any, _ p2: Any) -> String {
        return Loc.tr("Localizable", "creatable.auth.privacy", String(describing: p1), String(describing: p2), fallback: "By clicking 'Continue', you agree to the [Privacy Policy](%@) and [Terms of Service](%@)")
      }
      public static let selectContactMethod = Loc.tr("Localizable", "creatable.auth.select_contact_method", fallback: "Specify a method for the masters to contact you, it will be displayed in the profile")
      public static let title = Loc.tr("Localizable", "creatable.auth.title", fallback: "Authorization")
      public static let uncompletedRegistrationFound = Loc.tr("Localizable", "creatable.auth.uncompleted_registration_found", fallback: "We found an unfinished registration!")
      public static let uploadLogo = Loc.tr("Localizable", "creatable.auth.upload_logo", fallback: "Let's upload your avatar")
      public static let welcomeMessage = Loc.tr("Localizable", "creatable.auth.welcome_message", fallback: "Sign in or register to use the service on any device.")
    }
    public enum Booking {
      public static let selectProcedureFirstMessage = Loc.tr("Localizable", "creatable.booking.select_procedure_first_message", fallback: "Сначала выберите процедуру или комплекс")
      public static let title = Loc.tr("Localizable", "creatable.booking.title", fallback: "Запись")
      public enum Field {
        public static let procedureTitle = Loc.tr("Localizable", "creatable.booking.field.procedure_title", fallback: "Услуга")
        public static let salonTitle = Loc.tr("Localizable", "creatable.booking.field.salon_title", fallback: "Салон")
        public static let selectTimeSlot = Loc.tr("Localizable", "creatable.booking.field.select_time_slot", fallback: "Выбрать время")
        public static let serviceTitle = Loc.tr("Localizable", "creatable.booking.field.service_title", fallback: "Услуга")
        public static let timeSlotTitle = Loc.tr("Localizable", "creatable.booking.field.time_slot_title", fallback: "Время")
      }
      public enum Service {
        public static let change = Loc.tr("Localizable", "creatable.booking.service.change", fallback: "Изменить")
        public static let master = Loc.tr("Localizable", "creatable.booking.service.master", fallback: "Мастер")
        public static let masterNotSelected = Loc.tr("Localizable", "creatable.booking.service.master_not_selected", fallback: "Мастер не выбран")
        public static let notSelected = Loc.tr("Localizable", "creatable.booking.service.not_selected", fallback: "Не выбран")
        public static let nothingSelected = Loc.tr("Localizable", "creatable.booking.service.nothing_selected", fallback: "Не выбрано")
        public static let selectServiceForBooking = Loc.tr("Localizable", "creatable.booking.service.select_service_for_booking", fallback: "Выберите услугу для записи")
      }
      public enum TimeSlot {
        public static let change = Loc.tr("Localizable", "creatable.booking.time_slot.change", fallback: "Изменить")
        public static let notSelected = Loc.tr("Localizable", "creatable.booking.time_slot.not_selected", fallback: "Не выбрано")
        public static let title = Loc.tr("Localizable", "creatable.booking.time_slot.title", fallback: "Время")
      }
    }
    public enum Client {
      public static let namePlaceholder = Loc.tr("Localizable", "creatable.client.name_placeholder", fallback: "Enter name...")
      public static let title = Loc.tr("Localizable", "creatable.client.title", fallback: "New client")
      public static let unfinishedCreatable = Loc.tr("Localizable", "creatable.client.unfinished_creatable", fallback: "We found an unfinished client creation on your site!")
      public enum Field {
        public static let nameTitle = Loc.tr("Localizable", "creatable.client.field.name_title", fallback: "Name")
      }
    }
    public enum Complex {
      public static func executionMeta(_ p1: Any, _ p2: Any) -> String {
        return Loc.tr("Localizable", "creatable.complex.execution_meta", String(describing: p1), String(describing: p2), fallback: "%1$@ | %2$@")
      }
      public static let missingPrice = Loc.tr("Localizable", "creatable.complex.missing_price", fallback: "Укажите цену набора")
      public static func selectedProcedureMeta(_ p1: Any, _ p2: Any) -> String {
        return Loc.tr("Localizable", "creatable.complex.selected_procedure_meta", String(describing: p1), String(describing: p2), fallback: "%1$@ • %2$@")
      }
      public static let title = Loc.tr("Localizable", "creatable.complex.title", fallback: "Новый набор")
      public static func totalDurationSummary(_ p1: Any, _ p2: Any) -> String {
        return Loc.tr("Localizable", "creatable.complex.total_duration_summary", String(describing: p1), String(describing: p2), fallback: "%1$@: %2$@")
      }
      public static let unfinishedTitle = Loc.tr("Localizable", "creatable.complex.unfinished_title", fallback: "Незавершенное создание набора")
      public enum Access {
        public static let independentFromGender = Loc.tr("Localizable", "creatable.complex.access.independent_from_gender", fallback: "Независимо от пола")
        public static let menOnly = Loc.tr("Localizable", "creatable.complex.access.men_only", fallback: "Только для мужчин")
        public static let womenOnly = Loc.tr("Localizable", "creatable.complex.access.women_only", fallback: "Только для женщин")
      }
      public enum Action {
        public static let changeExecutors = Loc.tr("Localizable", "creatable.complex.action.change_executors", fallback: "Изменить исполнителей")
        public static let moveDown = Loc.tr("Localizable", "creatable.complex.action.move_down", fallback: "Переместить ниже")
        public static let moveUp = Loc.tr("Localizable", "creatable.complex.action.move_up", fallback: "Переместить выше")
      }
      public enum BookingType {
        public static let parallel = Loc.tr("Localizable", "creatable.complex.booking_type.parallel", fallback: "Услуги бронируются параллельно")
        public static let sequential = Loc.tr("Localizable", "creatable.complex.booking_type.sequential", fallback: "Услуги бронируются последовательно")
      }
      public enum Field {
        public static let accessSettingsTitle = Loc.tr("Localizable", "creatable.complex.field.access_settings_title", fallback: "Настройки доступа")
        public static let addService = Loc.tr("Localizable", "creatable.complex.field.add_service", fallback: "Добавить услугу")
        public static let allExecutors = Loc.tr("Localizable", "creatable.complex.field.all_executors", fallback: "Все исполнители")
        public static let bookingTypeHint = Loc.tr("Localizable", "creatable.complex.field.booking_type_hint", fallback: "Выберите, будут ли услуги набора предоставляться последовательно или параллельно.")
        public static let bookingTypeTitle = Loc.tr("Localizable", "creatable.complex.field.booking_type_title", fallback: "Тип бронирования")
        public static let chooseProceduresHint = Loc.tr("Localizable", "creatable.complex.field.choose_procedures_hint", fallback: "Добавьте процедуры, которые должны входить в этот набор")
        public static let chooseProceduresTitle = Loc.tr("Localizable", "creatable.complex.field.choose_procedures_title", fallback: "Выберите услуги")
        public static let descriptionHint = Loc.tr("Localizable", "creatable.complex.field.description_hint", fallback: "Опишите ценность набора и детали, которые важно знать до записи")
        public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.complex.field.description_placeholder", fallback: "Добавьте описание этого набора")
        public static let descriptionTitle = Loc.tr("Localizable", "creatable.complex.field.description_title", fallback: "Описание (необязательно)")
        public static let executorsMissing = Loc.tr("Localizable", "creatable.complex.field.executors_missing", fallback: "Исполнители не выбраны")
        public static let executorsSheetHint = Loc.tr("Localizable", "creatable.complex.field.executors_sheet_hint", fallback: "Выберите исполнителей, которые могут выполнять эту процедуру внутри набора")
        public static let nameHint = Loc.tr("Localizable", "creatable.complex.field.name_hint", fallback: "Название должно сразу объяснять, что входит в набор и чем он полезен клиенту")
        public static let namePlaceholder = Loc.tr("Localizable", "creatable.complex.field.name_placeholder", fallback: "Например, маникюр в 4 руки")
        public static let nameTitle = Loc.tr("Localizable", "creatable.complex.field.name_title", fallback: "Название набора")
        public static let noDiscount = Loc.tr("Localizable", "creatable.complex.field.no_discount", fallback: "Скидка не применяется")
        public static let onlineBookingEnabled = Loc.tr("Localizable", "creatable.complex.field.online_booking_enabled", fallback: "Вкл.")
        public static let onlineBookingHint = Loc.tr("Localizable", "creatable.complex.field.online_booking_hint", fallback: "Позвольте клиентам бронировать этот набор онлайн через Maetry, соцсети и прямые ссылки для записи")
        public static let onlineBookingTitle = Loc.tr("Localizable", "creatable.complex.field.online_booking_title", fallback: "Онлайн-запись")
        public static let percentDiscountPlaceholder = Loc.tr("Localizable", "creatable.complex.field.percent_discount_placeholder", fallback: "Введите скидку в %")
        public static let percentDiscountTitle = Loc.tr("Localizable", "creatable.complex.field.percent_discount_title", fallback: "Процент скидки")
        public static let priceHint = Loc.tr("Localizable", "creatable.complex.field.price_hint", fallback: "Выберите, как считать цену набора: по сумме услуг, спеццене или скидке")
        public static let priceTypeTitle = Loc.tr("Localizable", "creatable.complex.field.price_type_title", fallback: "Тип цены")
        public static let proceduresNotFound = Loc.tr("Localizable", "creatable.complex.field.procedures_not_found", fallback: "Процедуры не найдены")
        public static let readMore = Loc.tr("Localizable", "creatable.complex.field.read_more", fallback: "Подробнее...")
        public static let retailPriceTitle = Loc.tr("Localizable", "creatable.complex.field.retail_price_title", fallback: "Розничная цена")
        public static let selectedProceduresSummaryTitle = Loc.tr("Localizable", "creatable.complex.field.selected_procedures_summary_title", fallback: "Выбранные процедуры:")
        public static let servicesDescription = Loc.tr("Localizable", "creatable.complex.field.services_description", fallback: "Выберите процедуры, которые входят в набор, и при необходимости настройте исполнителей для каждой из них")
        public static let tagsHint = Loc.tr("Localizable", "creatable.complex.field.tags_hint", fallback: "Набор наследует теги выбранных процедур и может относиться сразу к нескольким тегам")
        public static let tagsPlaceholder = Loc.tr("Localizable", "creatable.complex.field.tags_placeholder", fallback: "Теги появятся после выбора процедур")
        public static let tagsTitle = Loc.tr("Localizable", "creatable.complex.field.tags_title", fallback: "Теги")
        public static let totalDuration = Loc.tr("Localizable", "creatable.complex.field.total_duration", fallback: "Общая длительность")
      }
      public enum PriceType {
        public static let free = Loc.tr("Localizable", "creatable.complex.price_type.free", fallback: "Бесплатно")
        public static let percentDiscount = Loc.tr("Localizable", "creatable.complex.price_type.percent_discount", fallback: "Процентная скидка")
        public static let specialPrice = Loc.tr("Localizable", "creatable.complex.price_type.special_price", fallback: "Специальная цена")
        public static let totalServices = Loc.tr("Localizable", "creatable.complex.price_type.total_services", fallback: "Цена всех услуг")
      }
      public enum Section {
        public static let main = Loc.tr("Localizable", "creatable.complex.section.main", fallback: "Основная информация")
        public static let price = Loc.tr("Localizable", "creatable.complex.section.price", fallback: "Цена")
        public static let services = Loc.tr("Localizable", "creatable.complex.section.services", fallback: "Услуги")
      }
    }
    public enum Contact {
      public static let contactType = Loc.tr("Localizable", "creatable.contact.contact_type", fallback: "Choose preferred contact method")
      public static let email = Loc.tr("Localizable", "creatable.contact.email", fallback: "Email")
      public static let enterEmail = Loc.tr("Localizable", "creatable.contact.enter_email", fallback: "Enter your email address")
      public static let enterInstagram = Loc.tr("Localizable", "creatable.contact.enter_instagram", fallback: "Share your Instagram account")
      public static let enterPhoneNumber = Loc.tr("Localizable", "creatable.contact.enter_phone_number", fallback: "Specify your phone number")
      public static let enterTelegramNumber = Loc.tr("Localizable", "creatable.contact.enter_telegram_number", fallback: "Add Telegram account")
      public static let instagram = Loc.tr("Localizable", "creatable.contact.instagram", fallback: "Instagram")
      public static let phone = Loc.tr("Localizable", "creatable.contact.phone", fallback: "Phone")
      public static let telegram = Loc.tr("Localizable", "creatable.contact.telegram", fallback: "Telegram")
      public static let title = Loc.tr("Localizable", "creatable.contact.title", fallback: "Create contact")
      public enum Field {
        public static let addContact = Loc.tr("Localizable", "creatable.contact.field.add_contact", fallback: "Add contact")
        public static let email = Loc.tr("Localizable", "creatable.contact.field.email", fallback: "Email")
        public static let emailPlaceholder = Loc.tr("Localizable", "creatable.contact.field.email_placeholder", fallback: "example@email.com")
        public static let instagram = Loc.tr("Localizable", "creatable.contact.field.instagram", fallback: "Instagram")
        public static let phone = Loc.tr("Localizable", "creatable.contact.field.phone", fallback: "Phone")
        public static let telegram = Loc.tr("Localizable", "creatable.contact.field.telegram", fallback: "Telegram")
      }
    }
    public enum Employee {
      public static let addContact = Loc.tr("Localizable", "creatable.employee.add_contact", fallback: "Add a contact method")
      public static let choosePosition = Loc.tr("Localizable", "creatable.employee.choose_position", fallback: "Choose a position — it determines the access rights and salary calculation method for the new specialist")
      public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.employee.description_placeholder", fallback: "Enter description...")
      public static let enterMasterDescription = Loc.tr("Localizable", "creatable.employee.enter_master_description", fallback: "Tell us a bit about the specialist — clients will see this")
      public static let nameEnter = Loc.tr("Localizable", "creatable.employee.name_enter", fallback: "Enter employee's name")
      public static let namePlaceholder = Loc.tr("Localizable", "creatable.employee.name_placeholder", fallback: "Enter name...")
      public static let setupSchedule = Loc.tr("Localizable", "creatable.employee.setup_schedule", fallback: "You can immediately set up a schedule for the invited specialist")
      public static let successfullyCreated = Loc.tr("Localizable", "creatable.employee.successfully_created", fallback: "Great! The invitation for the new specialist has been sent successfully")
      public static let title = Loc.tr("Localizable", "creatable.employee.title", fallback: "New employee")
      public static let unfinishedCreatable = Loc.tr("Localizable", "creatable.employee.unfinished_creatable", fallback: "We found an unfinished employee creation!")
      public static let unfinishedTitle = Loc.tr("Localizable", "creatable.employee.unfinished_title", fallback: "We found an unfinished employee creation")
      public enum Field {
        public static let nameTitle = Loc.tr("Localizable", "creatable.employee.field.name_title", fallback: "Specialist's name")
        public static let positionTitle = Loc.tr("Localizable", "creatable.employee.field.position_title", fallback: "Position")
        public static let scheduleTitle = Loc.tr("Localizable", "creatable.employee.field.schedule_title", fallback: "Specialist's schedule")
        public static let selectPosition = Loc.tr("Localizable", "creatable.employee.field.select_position", fallback: "Select position")
        public static let setup = Loc.tr("Localizable", "creatable.employee.field.setup", fallback: "Setup")
      }
    }
    public enum MarketingCampaign {
      public static let missingName = Loc.tr("Localizable", "creatable.marketing_campaign.missing_name", fallback: "Укажите название кампании")
      public static let missingType = Loc.tr("Localizable", "creatable.marketing_campaign.missing_type", fallback: "Выберите тип кампании")
      public static let title = Loc.tr("Localizable", "creatable.marketing_campaign.title", fallback: "Создать кампанию")
      public static let unfinishedTitle = Loc.tr("Localizable", "creatable.marketing_campaign.unfinished_title", fallback: "Незавершенная кампания")
      public enum Field {
        public static let colorTitle = Loc.tr("Localizable", "creatable.marketing_campaign.field.color_title", fallback: "Цвет")
        public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.marketing_campaign.field.description_placeholder", fallback: "Описание кампании (необязательно)")
        public static let descriptionTitle = Loc.tr("Localizable", "creatable.marketing_campaign.field.description_title", fallback: "Описание")
        public static let iconTitle = Loc.tr("Localizable", "creatable.marketing_campaign.field.icon_title", fallback: "Иконка")
        public static let namePlaceholder = Loc.tr("Localizable", "creatable.marketing_campaign.field.name_placeholder", fallback: "Введите название кампании")
        public static let nameTitle = Loc.tr("Localizable", "creatable.marketing_campaign.field.name_title", fallback: "Название")
        public static let selectType = Loc.tr("Localizable", "creatable.marketing_campaign.field.select_type", fallback: "Выбрать тип")
        public static let selectTypeTitle = Loc.tr("Localizable", "creatable.marketing_campaign.field.select_type_title", fallback: "Выберите тип кампании")
        public static let typeTitle = Loc.tr("Localizable", "creatable.marketing_campaign.field.type_title", fallback: "Тип кампании")
      }
    }
    public enum MarketingLeadSource {
      public static let campaignSubtitle = Loc.tr("Localizable", "creatable.marketing_lead_source.campaign_subtitle", fallback: "Необязательные параметры кампании для рекламного трафика")
      public static let campaignTitle = Loc.tr("Localizable", "creatable.marketing_lead_source.campaign_title", fallback: "Расширение рекламы")
      public static let partnerSubtitle = Loc.tr("Localizable", "creatable.marketing_lead_source.partner_subtitle", fallback: "Свяжите существующего промоутера или оставьте без него")
      public static let partnerTitle = Loc.tr("Localizable", "creatable.marketing_lead_source.partner_title", fallback: "Партнерское расширение")
      public static let rootHint = Loc.tr("Localizable", "creatable.marketing_lead_source.root_hint", fallback: "Публичная короткая ссылка будет создана автоматически")
      public static let rootTitle = Loc.tr("Localizable", "creatable.marketing_lead_source.root_title", fallback: "Источник")
      public static let subtitle = Loc.tr("Localizable", "creatable.marketing_lead_source.subtitle", fallback: "Сначала выберите сценарий, затем заполните детали")
      public static let title = Loc.tr("Localizable", "creatable.marketing_lead_source.title", fallback: "Создать источник")
      public enum Error {
        public static let invalidUrl = Loc.tr("Localizable", "creatable.marketing_lead_source.error.invalid_url", fallback: "Введите корректный URL назначения")
        public static let missingCampaignName = Loc.tr("Localizable", "creatable.marketing_lead_source.error.missing_campaign_name", fallback: "Укажите название кампании")
        public static let missingName = Loc.tr("Localizable", "creatable.marketing_lead_source.error.missing_name", fallback: "Укажите название источника")
        public static let missingPromoterName = Loc.tr("Localizable", "creatable.marketing_lead_source.error.missing_promoter_name", fallback: "Укажите имя промоутера")
        public static let missingPromoterSelection = Loc.tr("Localizable", "creatable.marketing_lead_source.error.missing_promoter_selection", fallback: "Выберите существующего промоутера")
      }
      public enum Field {
        public static let destinationUrlPlaceholder = Loc.tr("Localizable", "creatable.marketing_lead_source.field.destination_url_placeholder", fallback: "https://example.com")
        public static let destinationUrlTitle = Loc.tr("Localizable", "creatable.marketing_lead_source.field.destination_url_title", fallback: "URL назначения")
        public static let namePlaceholder = Loc.tr("Localizable", "creatable.marketing_lead_source.field.name_placeholder", fallback: "Введите название источника")
        public static let nameTitle = Loc.tr("Localizable", "creatable.marketing_lead_source.field.name_title", fallback: "Название источника")
      }
      public enum Partner {
        public static let displayNamePlaceholder = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.display_name_placeholder", fallback: "Введите имя промоутера")
        public static let displayNameTitle = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.display_name_title", fallback: "Отображаемое имя")
        public static let empty = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.empty", fallback: "Пока нет доступных промоутеров")
        public static let selectPrompt = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.select_prompt", fallback: "Выберите промоутера")
        public enum Mode {
          public static let existing = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.mode.existing", fallback: "Связать существующего")
          public static let later = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.mode.later", fallback: "Создать позже")
          public static let new = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.mode.new", fallback: "Создать нового")
          public static let title = Loc.tr("Localizable", "creatable.marketing_lead_source.partner.mode.title", fallback: "Настройка промоутера")
        }
      }
      public enum Scenario {
        public static let subtitle = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.subtitle", fallback: "Начните с базового источника, рекламы или партнерского сценария")
        public static let title = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.title", fallback: "Выберите сценарий источника")
        public enum Ads {
          public static let description = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.ads.description", fallback: "Добавьте рекламную кампанию как расширение")
          public static let title = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.ads.title", fallback: "Рекламный источник")
        }
        public enum Basic {
          public static let description = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.basic.description", fallback: "Самостоятельный источник без кампании и промоутера")
          public static let title = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.basic.title", fallback: "Базовый источник")
        }
        public enum Partner {
          public static let description = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.partner.description", fallback: "Свяжите существующего промоутера или создайте позже")
          public static let title = Loc.tr("Localizable", "creatable.marketing_lead_source.scenario.partner.title", fallback: "Партнерский источник")
        }
      }
    }
    public enum Position {
      public static let addPermissions = Loc.tr("Localizable", "creatable.position.add_permissions", fallback: "Assign access rights for this position")
      public static let nameEnter = Loc.tr("Localizable", "creatable.position.name_enter", fallback: "Specify the name of the new position")
      public static let placeholder = Loc.tr("Localizable", "creatable.position.placeholder", fallback: "Enter name...")
      public static let salaryEmpty = Loc.tr("Localizable", "creatable.position.salary_empty", fallback: "Zero income specified")
      public static let settingSalary = Loc.tr("Localizable", "creatable.position.setting_salary", fallback: "Set the salary amount for this position")
      public static let title = Loc.tr("Localizable", "creatable.position.title", fallback: "New position")
      public static let unfinishedCreatable = Loc.tr("Localizable", "creatable.position.unfinished_creatable", fallback: "We found an unfinished position creation!")
      public enum Field {
        public static let nameTitle = Loc.tr("Localizable", "creatable.position.field.name_title", fallback: "Name")
        public static let salaryButton = Loc.tr("Localizable", "creatable.position.field.salary_button", fallback: "Salary")
        public static let salaryTitle = Loc.tr("Localizable", "creatable.position.field.salary_title", fallback: "Enter salary")
      }
    }
    public enum Procedure {
      public static let categoryTitle = Loc.tr("Localizable", "creatable.procedure.category_title", fallback: "Choose a suitable category — it will help clients navigate better")
      public static let descriptionEnter = Loc.tr("Localizable", "creatable.procedure.description_enter", fallback: "Tell us what's important to know before the procedure")
      public static let descriptionExample = Loc.tr("Localizable", "creatable.procedure.description_example", fallback: "For example: “Bring a towel, arrive 10-15 minutes early, remove jewelry, inform about contraindications”")
      public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.procedure.description_placeholder", fallback: "Enter description...")
      public static let durationTitle = Loc.tr("Localizable", "creatable.procedure.duration_title", fallback: "How long does the procedure take?")
      public static let mastersTitle = Loc.tr("Localizable", "creatable.procedure.masters_title", fallback: "Which specialists will perform this service?")
      public static let missingDuration = Loc.tr("Localizable", "creatable.procedure.missing_duration", fallback: "Missing duration")
      public static let missingMaster = Loc.tr("Localizable", "creatable.procedure.missing_master", fallback: "Missing master")
      public static let missingPrice = Loc.tr("Localizable", "creatable.procedure.missing_price", fallback: "Missing price")
      public static let missingServiceId = Loc.tr("Localizable", "creatable.procedure.missing_service_id", fallback: "Missing service ID")
      public static let nameEnter = Loc.tr("Localizable", "creatable.procedure.name_enter", fallback: "Let's start with the name — enter it manually or choose from the list")
      public static let nameHint = Loc.tr("Localizable", "creatable.procedure.name_hint", fallback: "Choosing an existing name will help clients find you faster")
      public static let namePlaceholder = Loc.tr("Localizable", "creatable.procedure.name_placeholder", fallback: "Enter service name...")
      public static let pricePlaceholder = Loc.tr("Localizable", "creatable.procedure.price_placeholder", fallback: "Enter amount...")
      public static let priceTitle = Loc.tr("Localizable", "creatable.procedure.price_title", fallback: "Specify the cost — this information will be displayed on the procedure page")
      public static let title = Loc.tr("Localizable", "creatable.procedure.title", fallback: "Create procedure")
      public static let unfinishedCreatable = Loc.tr("Localizable", "creatable.procedure.unfinished_creatable", fallback: "We found an unfinished procedure creation")
      public static let unfinishedTitle = Loc.tr("Localizable", "creatable.procedure.unfinished_title", fallback: "We found an unfinished procedure creation")
      public enum Field {
        public static let chosenServiceHint = Loc.tr("Localizable", "creatable.procedure.field.chosen_service_hint", fallback: "An existing service from the catalog will be used")
        public static let createService = Loc.tr("Localizable", "creatable.procedure.field.create_service", fallback: "Or create a new service")
        public static let createServiceHint = Loc.tr("Localizable", "creatable.procedure.field.create_service_hint", fallback: "A new service will be created in the selected categories")
        public static let descriptionHint = Loc.tr("Localizable", "creatable.procedure.field.description_hint", fallback: "Describe what is included in the service and what the client should know before booking")
        public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.procedure.field.description_placeholder", fallback: "Enter description...")
        public static let descriptionTitle = Loc.tr("Localizable", "creatable.procedure.field.description_title", fallback: "Procedure description")
        public static let durationHint = Loc.tr("Localizable", "creatable.procedure.field.duration_hint", fallback: "Specify how long the service takes for the selected specialists")
        public static let durationTitle = Loc.tr("Localizable", "creatable.procedure.field.duration_title", fallback: "Specify the duration of the procedure")
        public static let executors = Loc.tr("Localizable", "creatable.procedure.field.executors", fallback: "Specialists")
        public static let executorsHint = Loc.tr("Localizable", "creatable.procedure.field.executors_hint", fallback: "Select the specialists who will be able to provide this service")
        public static let executorsPlaceholder = Loc.tr("Localizable", "creatable.procedure.field.executors_placeholder", fallback: "No specialists selected yet")
        public static let namePlaceholder = Loc.tr("Localizable", "creatable.procedure.field.name_placeholder", fallback: "Enter name...")
        public static let nameTitle = Loc.tr("Localizable", "creatable.procedure.field.name_title", fallback: "Service")
        public static let priceHint = Loc.tr("Localizable", "creatable.procedure.field.price_hint", fallback: "This price will be used in the catalog and when booking the client")
        public static let priceTitle = Loc.tr("Localizable", "creatable.procedure.field.price_title", fallback: "Procedure price")
        public static let selectMasters = Loc.tr("Localizable", "creatable.procedure.field.select_masters", fallback: "Select specialists")
        public static let selectTemplate = Loc.tr("Localizable", "creatable.procedure.field.select_template", fallback: "Select from templates")
        public static let serviceHint = Loc.tr("Localizable", "creatable.procedure.field.service_hint", fallback: "First choose a template from the catalog or create a new service in the appropriate category")
        public static let servicePlaceholder = Loc.tr("Localizable", "creatable.procedure.field.service_placeholder", fallback: "No template or new service selected yet")
        public static let setDuration = Loc.tr("Localizable", "creatable.procedure.field.set_duration", fallback: "Set")
      }
    }
    public enum Product {
      public static let createTitle = Loc.tr("Localizable", "creatable.product.create_title", fallback: "Добавить новые товары")
      public static let editTitle = Loc.tr("Localizable", "creatable.product.edit_title", fallback: "Изменить товар")
      public static let missingTitle = Loc.tr("Localizable", "creatable.product.missing_title", fallback: "Введите название товара")
      public enum Action {
        public static let addSku = Loc.tr("Localizable", "creatable.product.action.add_sku", fallback: "Добавить еще один код SKU")
        public static let clearPhotos = Loc.tr("Localizable", "creatable.product.action.clear_photos", fallback: "Очистить фото")
        public static let generateSku = Loc.tr("Localizable", "creatable.product.action.generate_sku", fallback: "Сгенерировать код SKU")
        public static let managePhoto = Loc.tr("Localizable", "creatable.product.action.manage_photo", fallback: "Управление фото")
        public static let selectTax = Loc.tr("Localizable", "creatable.product.action.select_tax", fallback: "Выбрать налог")
        public static let selectUnit = Loc.tr("Localizable", "creatable.product.action.select_unit", fallback: "Выбрать единицу")
        public static let useDemoPhotos = Loc.tr("Localizable", "creatable.product.action.use_demo_photos", fallback: "Использовать демо-фото")
      }
      public enum Field {
        public static let amount = Loc.tr("Localizable", "creatable.product.field.amount", fallback: "Сумма")
        public static let amountPlaceholder = Loc.tr("Localizable", "creatable.product.field.amount_placeholder", fallback: "0.00")
        public static let amountUnit = Loc.tr("Localizable", "creatable.product.field.amount_unit", fallback: "Единица измерения")
        public static let barcode = Loc.tr("Localizable", "creatable.product.field.barcode", fallback: "Штрихкод товара (необязательно)")
        public static let barcodePlaceholder = Loc.tr("Localizable", "creatable.product.field.barcode_placeholder", fallback: "UPC, EAN, GTIN")
        public static let brand = Loc.tr("Localizable", "creatable.product.field.brand", fallback: "Бренд товара")
        public static let brandPlaceholder = Loc.tr("Localizable", "creatable.product.field.brand_placeholder", fallback: "Например, Lui Philipo")
        public static let category = Loc.tr("Localizable", "creatable.product.field.category", fallback: "Категория товара")
        public static let categoryPlaceholder = Loc.tr("Localizable", "creatable.product.field.category_placeholder", fallback: "Например, Ногти")
        public static let commissionDescription = Loc.tr("Localizable", "creatable.product.field.commission_description", fallback: "Рассчитывайте комиссию участника команды при продаже товара.")
        public static let commissionPercent = Loc.tr("Localizable", "creatable.product.field.commission_percent", fallback: "Комиссия, %")
        public static let commissionToggle = Loc.tr("Localizable", "creatable.product.field.commission_toggle", fallback: "Включить комиссию участников команды")
        public static let currentStock = Loc.tr("Localizable", "creatable.product.field.current_stock", fallback: "Текущее количество в наличии")
        public static let description = Loc.tr("Localizable", "creatable.product.field.description", fallback: "Описание товара")
        public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.product.field.description_placeholder", fallback: "Добавьте описание товара")
        public static let lowStockDescription = Loc.tr("Localizable", "creatable.product.field.low_stock_description", fallback: "Fresha уведомит вас и автоматически заполнит заданное количество для повторного заказа.")
        public static let lowStockNotificationToggle = Loc.tr("Localizable", "creatable.product.field.low_stock_notification_toggle", fallback: "Получать уведомления о низком уровне запасов")
        public static let lowStockThreshold = Loc.tr("Localizable", "creatable.product.field.low_stock_threshold", fallback: "Низкий уровень запасов")
        public static let lowStockToggle = Loc.tr("Localizable", "creatable.product.field.low_stock_toggle", fallback: "Низкий уровень запасов и повторный заказ")
        public static let margin = Loc.tr("Localizable", "creatable.product.field.margin", fallback: "Наценка")
        public static let name = Loc.tr("Localizable", "creatable.product.field.name", fallback: "Название товара")
        public static let namePlaceholder = Loc.tr("Localizable", "creatable.product.field.name_placeholder", fallback: "Введите название товара")
        public static let reorderQuantity = Loc.tr("Localizable", "creatable.product.field.reorder_quantity", fallback: "Количество повторного заказа")
        public static let retailDescription = Loc.tr("Localizable", "creatable.product.field.retail_description", fallback: "Разрешите продавать этот товар на кассе.")
        public static let retailPrice = Loc.tr("Localizable", "creatable.product.field.retail_price", fallback: "Розничная цена")
        public static let retailToggle = Loc.tr("Localizable", "creatable.product.field.retail_toggle", fallback: "Включить розничные продажи")
        public static let shortDescription = Loc.tr("Localizable", "creatable.product.field.short_description", fallback: "Краткое описание")
        public static let shortDescriptionPlaceholder = Loc.tr("Localizable", "creatable.product.field.short_description_placeholder", fallback: "Короткое описание товара")
        public static let sku = Loc.tr("Localizable", "creatable.product.field.sku", fallback: "SKU (единица складского учета)")
        public static let stockToggle = Loc.tr("Localizable", "creatable.product.field.stock_toggle", fallback: "Отслеживать количество в наличии")
        public static let supplier = Loc.tr("Localizable", "creatable.product.field.supplier", fallback: "Поставщик")
        public static let supplierPlaceholder = Loc.tr("Localizable", "creatable.product.field.supplier_placeholder", fallback: "Например, Lui Nikita")
        public static let supplyPrice = Loc.tr("Localizable", "creatable.product.field.supply_price", fallback: "Цена поставки")
        public static let tax = Loc.tr("Localizable", "creatable.product.field.tax", fallback: "Налог")
        public static let taxSelect = Loc.tr("Localizable", "creatable.product.field.tax_select", fallback: "Выберите налог")
      }
      public enum Photo {
        public static let primaryBadge = Loc.tr("Localizable", "creatable.product.photo.primary_badge", fallback: "Primary photo")
      }
      public enum Section {
        public static let basicInfo = Loc.tr("Localizable", "creatable.product.section.basic_info", fallback: "Основная информация")
        public static let commission = Loc.tr("Localizable", "creatable.product.section.commission", fallback: "Комиссия участника команды")
        public static let inventory = Loc.tr("Localizable", "creatable.product.section.inventory", fallback: "Ассортимент")
        public static let photo = Loc.tr("Localizable", "creatable.product.section.photo", fallback: "Фото товара")
        public static let price = Loc.tr("Localizable", "creatable.product.section.price", fallback: "Цена")
        public static let reorder = Loc.tr("Localizable", "creatable.product.section.reorder", fallback: "Низкий уровень запасов и повторный заказ")
        public static let retailSales = Loc.tr("Localizable", "creatable.product.section.retail_sales", fallback: "Розничные продажи")
        public static let stock = Loc.tr("Localizable", "creatable.product.section.stock", fallback: "Количество в наличии")
      }
    }
    public enum Salon {
      public static let addAddress = Loc.tr("Localizable", "creatable.salon.add_address", fallback: "Great! Now add your space's address so clients can find you easily")
      public static let addContact = Loc.tr("Localizable", "creatable.salon.add_contact", fallback: "Add a contact method — so clients can easily reach you")
      public static let addressPlaceholder = Loc.tr("Localizable", "creatable.salon.address_placeholder", fallback: "Enter address...")
      public static let chainType = Loc.tr("Localizable", "creatable.salon.chain_type", fallback: "Beauty salon chain")
      public static let currentAddress = Loc.tr("Localizable", "creatable.salon.current_address", fallback: "Current address")
      public static let descriptionEnter = Loc.tr("Localizable", "creatable.salon.description_enter", fallback: "Tell us a bit about yourself and your services — this information will be displayed on your page")
      public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.salon.description_placeholder", fallback: "Enter description...")
      public static let individualType = Loc.tr("Localizable", "creatable.salon.individual_type", fallback: "Beauty salon")
      public static let invalidAddress = Loc.tr("Localizable", "creatable.salon.invalid_address", fallback: "Invalid address")
      public static let invalidAddressMessage = Loc.tr("Localizable", "creatable.salon.invalid_address_message", fallback: "Please choose a different address")
      public static let masterType = Loc.tr("Localizable", "creatable.salon.master_type", fallback: "Individual specialist")
      public static let nameEnter = Loc.tr("Localizable", "creatable.salon.name_enter", fallback: "Great! Now enter your salon's name — as clients will see it")
      public static let namePlaceholder = Loc.tr("Localizable", "creatable.salon.name_placeholder", fallback: "Enter name...")
      public static let noticeRequest = Loc.tr("Localizable", "creatable.salon.notice_request", fallback: "To not miss messages from clients, allow notifications")
      public static let salonType = Loc.tr("Localizable", "creatable.salon.salon_type", fallback: "Let's start — I'll help you set everything up for your needs. First, choose what kind of space you're creating")
      public static let title = Loc.tr("Localizable", "creatable.salon.title", fallback: "Salon creation")
      public static func turnOnNotifications(_ p1: Any) -> String {
        return Loc.tr("Localizable", "creatable.salon.turn_on_notifications", String(describing: p1), fallback: "You've disabled push notifications in [settings](%@), enable them there")
      }
      public static let unableAddress = Loc.tr("Localizable", "creatable.salon.unable_address", fallback: "Unavailable address")
      public static let unfinishedCreatable = Loc.tr("Localizable", "creatable.salon.unfinished_creatable", fallback: "We found an unfinished salon creation on your site!")
      public static let uploadLogo = Loc.tr("Localizable", "creatable.salon.upload_logo", fallback: "Upload a logo — it will be displayed in your profile and search results")
      public enum Workplace {
        public static let addContact = Loc.tr("Localizable", "creatable.salon.workplace.add_contact", fallback: "Add contact")
        public static let addLogo = Loc.tr("Localizable", "creatable.salon.workplace.add_logo", fallback: "Add logo")
        public static let address = Loc.tr("Localizable", "creatable.salon.workplace.address", fallback: "Address")
        public static let changeAddress = Loc.tr("Localizable", "creatable.salon.workplace.change_address", fallback: "Change address")
        public static let changeType = Loc.tr("Localizable", "creatable.salon.workplace.change_type", fallback: "Change type")
        public static let contacts = Loc.tr("Localizable", "creatable.salon.workplace.contacts", fallback: "Contacts")
        public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.salon.workplace.description_placeholder", fallback: "Enter description...")
        public static let logoDescription = Loc.tr("Localizable", "creatable.salon.workplace.logo_description", fallback: "Add a logo to stand out among salons")
        public static let salonDescription = Loc.tr("Localizable", "creatable.salon.workplace.salon_description", fallback: "Salon description")
        public static let salonLogo = Loc.tr("Localizable", "creatable.salon.workplace.salon_logo", fallback: "Salon logo")
        public static let salonName = Loc.tr("Localizable", "creatable.salon.workplace.salon_name", fallback: "Salon name")
        public static let salonNamePlaceholder = Loc.tr("Localizable", "creatable.salon.workplace.salon_name_placeholder", fallback: "Enter name...")
        public static let salonType = Loc.tr("Localizable", "creatable.salon.workplace.salon_type", fallback: "Salon type")
      }
    }
    public enum Schedule {
      public static let cycledExample = Loc.tr("Localizable", "creatable.schedule.cycled_example", fallback: "For example, '2 on 2 off' or any other combination: 5/2, 3/1, etc.")
      public static let cycledInfo = Loc.tr("Localizable", "creatable.schedule.cycled_info", fallback: "Specify the number of working and off days. Format — working days first, then off days.")
      public static let dailyInfo = Loc.tr("Localizable", "creatable.schedule.daily_info", fallback: "Daily schedule — the set schedule will apply to all days of the week")
      public static let dayScheduleTitle = Loc.tr("Localizable", "creatable.schedule.day_schedule_title", fallback: "Daily schedule")
      public static let firstDay = Loc.tr("Localizable", "creatable.schedule.first_day", fallback: "Choose the first working day")
      public static let missingTimetable = Loc.tr("Localizable", "creatable.schedule.missing_timetable", fallback: "Missing timetable")
      public static let noWorktimeSetError = Loc.tr("Localizable", "creatable.schedule.no_worktime_set_error", fallback: "Working time is not set")
      public static let offTime = Loc.tr("Localizable", "creatable.schedule.off_time", fallback: "Breaks:")
      public static let offtimeDuplicatesError = Loc.tr("Localizable", "creatable.schedule.offtime_duplicates_error", fallback: "There are duplicate breaks")
      public static let offtimeOverlappingError = Loc.tr("Localizable", "creatable.schedule.offtime_overlapping_error", fallback: "There are overlapping breaks")
      public static let setTime = Loc.tr("Localizable", "creatable.schedule.set_time", fallback: "Choose working hours — so clients know when they can book")
      public static let shiftScheduleTitle = Loc.tr("Localizable", "creatable.schedule.shift_schedule_title", fallback: "Shift schedule")
      public static let title = Loc.tr("Localizable", "creatable.schedule.title", fallback: "Create schedule")
      public static let weekScheduleTitle = Loc.tr("Localizable", "creatable.schedule.week_schedule_title", fallback: "Weekly template")
      public static let weekend = Loc.tr("Localizable", "creatable.schedule.weekend", fallback: "Days off:")
      public static let weeklyInfo = Loc.tr("Localizable", "creatable.schedule.weekly_info", fallback: "Create a weekly template — each day can be set up individually")
      public static let workDays = Loc.tr("Localizable", "creatable.schedule.work_days", fallback: "Working days:")
      public static let workTime = Loc.tr("Localizable", "creatable.schedule.work_time", fallback: "Working time:")
      public static let worktimeUncorrectError = Loc.tr("Localizable", "creatable.schedule.worktime_uncorrect_error", fallback: "End time must be after start time")
    }
    public enum Service {
      public static let missingCategory = Loc.tr("Localizable", "creatable.service.missing_category", fallback: "Missing category")
      public static let missingTag = Loc.tr("Localizable", "creatable.service.missing_tag", fallback: "Missing tag")
    }
  }
  public enum Error {
    public static let error = Loc.tr("Localizable", "error.error", fallback: "Error")
    public enum Decoding {
      public static let customerAppointment = Loc.tr("Localizable", "error.decoding.customer_appointment", fallback: "Failed to decode as Procedure or Complex")
      public static let employeeAppointment = Loc.tr("Localizable", "error.decoding.employee_appointment", fallback: "Failed to decode as ProcedureSlots or ComplexSlots")
    }
    public enum Default {
      public static let anotherTimezoneWorktime = Loc.tr("Localizable", "error.default.another_timezone_worktime", fallback: "Opening hours are shown in a different time zone")
      public static let failedToLoadImage = Loc.tr("Localizable", "error.default.failedToLoadImage", fallback: "Failed to load image. Check your network connection and try again.")
      public static let imageLoadFailed = Loc.tr("Localizable", "error.default.image_load_failed", fallback: "Image load failed")
      public static let missingClient = Loc.tr("Localizable", "error.default.missing_client", fallback: "Missing client")
      public static let missingClientContacts = Loc.tr("Localizable", "error.default.missing_client_contacts", fallback: "Missing client contacts")
      public static let missingClientName = Loc.tr("Localizable", "error.default.missing_client_name", fallback: "Missing client name")
      public static let missingDateInterval = Loc.tr("Localizable", "error.default.missing_date_interval", fallback: "Missing date interval")
      public static let missingDescription = Loc.tr("Localizable", "error.default.missing_description", fallback: "Missing description")
      public static let missingMaster = Loc.tr("Localizable", "error.default.missing_master", fallback: "Missing master")
      public static let missingPermissions = Loc.tr("Localizable", "error.default.missing_permissions", fallback: "Missing permissions")
      public static let missingProcedures = Loc.tr("Localizable", "error.default.missing_procedures", fallback: "Missing procedures")
      public static let missingSalary = Loc.tr("Localizable", "error.default.missing_salary", fallback: "Missing salary")
      public static let missingTitle = Loc.tr("Localizable", "error.default.missing_title", fallback: "Missing title")
      public static let missingType = Loc.tr("Localizable", "error.default.missing_type", fallback: "Missing type")
      public static let offtimeIsOutOfWorktime = Loc.tr("Localizable", "error.default.offtime_is_out_of_worktime", fallback: "Off time is out of work time")
      public static let registerAsClient = Loc.tr("Localizable", "error.default.register_as_client", fallback: "To process the link, you need to register as a client")
      public static let registerAsMaster = Loc.tr("Localizable", "error.default.register_as_master", fallback: "To process the link, you need to register as a specialist")
      public static let unknownError = Loc.tr("Localizable", "error.default.unknown_error", fallback: "Unknown error")
    }
    public enum Http {
      public static let badGateway = Loc.tr("Localizable", "error.http.bad_gateway", fallback: "502 Bad Gateway: The server, acting as a gateway or proxy, received an invalid response from the upstream server.")
      public static let badRequest = Loc.tr("Localizable", "error.http.bad_request", fallback: "400 Bad Request: The server cannot understand the request due to invalid syntax.")
      public static let conflict = Loc.tr("Localizable", "error.http.conflict", fallback: "409 Conflict: The request cannot be processed due to a conflict in the request, such as an edit conflict between multiple concurrent updates.")
      public static let forbidden = Loc.tr("Localizable", "error.http.forbidden", fallback: "403 Forbidden: The server understands the request but refuses to execute it. Usually related to lack of access rights.")
      public static let gatewayTimeout = Loc.tr("Localizable", "error.http.gateway_timeout", fallback: "504 Gateway Timeout: The server, acting as a gateway or proxy, did not receive a timely response from the upstream server.")
      public static let internalServerError = Loc.tr("Localizable", "error.http.internal_server_error", fallback: "500 Internal Server Error: A general server error. Usually means something went wrong on the server side.")
      public static let methodNotAllowed = Loc.tr("Localizable", "error.http.method_not_allowed", fallback: "405 Method Not Allowed: The method specified in the request is prohibited for this resource.")
      public static let notFound = Loc.tr("Localizable", "error.http.not_found", fallback: "404 Not Found: The server cannot find the requested resource. This is the most common error, indicating a non-existent page.")
      public static let paymentRequired = Loc.tr("Localizable", "error.http.payment_required", fallback: "Subscription limit reached. Please upgrade your plan to continue.")
      public static let serviceUnavailable = Loc.tr("Localizable", "error.http.service_unavailable", fallback: "503 Service Unavailable: The server cannot process the request due to temporary overload or maintenance.")
      public static let unauthorized = Loc.tr("Localizable", "error.http.unauthorized", fallback: "401 Unauthorized: Authentication required. User must log in to access.")
    }
    public enum Position {
      public static let missingSalary = Loc.tr("Localizable", "error.position.missing_salary", fallback: "Missing salary")
    }
    public enum Workplace {
      public static let invalidAddress = Loc.tr("Localizable", "error.workplace.invalid_address", fallback: "Invalid address")
      public static let missingAddress = Loc.tr("Localizable", "error.workplace.missing_address", fallback: "Enter salon address")
      public static let missingLocale = Loc.tr("Localizable", "error.workplace.missing_locale", fallback: "Failed to determine region")
      public static let missingName = Loc.tr("Localizable", "error.workplace.missing_name", fallback: "Enter salon name")
      public static let missingTimeZone = Loc.tr("Localizable", "error.workplace.missing_time_zone", fallback: "Failed to determine time zone")
      public static let missingType = Loc.tr("Localizable", "error.workplace.missing_type", fallback: "Select salon type")
      public static let uploadFailed = Loc.tr("Localizable", "error.workplace.upload_failed", fallback: "Image upload failed")
    }
  }
  public enum Onboarding {
    public enum Activate {
      public static let subtitle = Loc.tr("Localizable", "onboarding.activate.subtitle", fallback: "In the settings section, scroll down to Danger Zone and click activate")
      public static let title = Loc.tr("Localizable", "onboarding.activate.title", fallback: "Activate salon")
    }
    public enum Alert {
      public static let completeSalonSetup = Loc.tr("Localizable", "onboarding.alert.complete_salon_setup", fallback: "Complete the salon setup")
      public static func stepsCompleted(_ p1: Int, _ p2: Int) -> String {
        return Loc.tr("Localizable", "onboarding.alert.steps_completed", p1, p2, fallback: "%d of %d steps completed")
      }
      public enum LearnWorkplace {
        public static let subtitle = Loc.tr("Localizable", "onboarding.alert.learn_workplace.subtitle", fallback: "How to create a salon")
        public static let title = Loc.tr("Localizable", "onboarding.alert.learn_workplace.title", fallback: "Training")
      }
      public enum SetupWorkplace {
        public static let subtitle = Loc.tr("Localizable", "onboarding.alert.setup_workplace.subtitle", fallback: "{completedSteps, plural, one{{completedSteps} of {totalSteps} step completed} few{{completedSteps} of {totalSteps} steps completed} many{{completedSteps} of {totalSteps} steps completed} other{{completedSteps} of {totalSteps} steps completed} }")
        public static let title = Loc.tr("Localizable", "onboarding.alert.setup_workplace.title", fallback: "Complete salon setup")
      }
    }
    public enum Appointment {
      public enum Step1 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.appointment.step1.subtitle", fallback: "To open the workspace, tap the Posts widget")
        public static let title = Loc.tr("Localizable", "onboarding.appointment.step1.title", fallback: "Workspace")
      }
      public enum Step2 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.appointment.step2.subtitle", fallback: "On the Workspace screen, tap 􀑎, select the client and technician, enter the time and procedure, and then save the appointment by tapping the Create button")
        public static let title = Loc.tr("Localizable", "onboarding.appointment.step2.title", fallback: "Appointment creation")
      }
      public enum Step3 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.appointment.step3.subtitle", fallback: "Hold the entry and drag it to the side to the time and master you want. Then save the selection by tapping Move Entry.")
        public static let title = Loc.tr("Localizable", "onboarding.appointment.step3.title", fallback: "Transferring an entry")
      }
      public enum Step4 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.appointment.step4.subtitle", fallback: "Touch and hold the entry, in the menu that opens, select the desired status.")
        public static let title = Loc.tr("Localizable", "onboarding.appointment.step4.title", fallback: "Status management")
      }
    }
    public enum Client {
      public enum Step1 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.client.step1.subtitle", fallback: "In the navigation panel, go to the \nSalon tab and click Add client 􁥉")
        public static let title = Loc.tr("Localizable", "onboarding.client.step1.title", fallback: "Client invitation")
      }
      public enum Step2 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.client.step2.subtitle", fallback: "After entering all the data, go to My Clients section and send the client a link to invite them to the salon.")
        public static let title = Loc.tr("Localizable", "onboarding.client.step2.title", fallback: "Invitation link")
      }
    }
    public enum CreateWorkplace {
      public static let subtitle = Loc.tr("Localizable", "onboarding.create_workplace.subtitle", fallback: "On the main screen, swipe right to open the auxiliary panel, then tap +.")
      public static let title = Loc.tr("Localizable", "onboarding.create_workplace.title", fallback: "Create your first salon")
    }
    public enum Employee {
      public enum Step1 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.employee.step1.subtitle", fallback: "In the navigation panel, go to the \nSalon tab and click Add a master 􁥉")
        public static let title = Loc.tr("Localizable", "onboarding.employee.step1.title", fallback: "Invitation of the master")
      }
      public enum Step2 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.employee.step2.subtitle", fallback: "At the stage of selecting a position for the master, you can select a position created earlier or add a new one.")
        public static let title = Loc.tr("Localizable", "onboarding.employee.step2.title", fallback: "Choosing a position")
      }
      public enum Step3 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.employee.step3.subtitle", fallback: "Once you add a stylist, their cell will appear in the tab of the selected position. From there, you can send them an invitation to join your salon.")
        public static let title = Loc.tr("Localizable", "onboarding.employee.step3.title", fallback: "Waiting for master")
      }
    }
    public enum InviteEmployee {
      public static let subtitle = Loc.tr("Localizable", "onboarding.invite_employee.subtitle", fallback: "On the dashboard screen, go to the employees section, then tap +")
      public static let title = Loc.tr("Localizable", "onboarding.invite_employee.title", fallback: "Invite employee")
    }
    public enum Position {
      public enum Step1 {
        public static let description = Loc.tr("Localizable", "onboarding.position.step1.description", fallback: "Open the masters screen, tap + in the positions section to create a new position. Fill in all fields and confirm creation.")
        public static let title = Loc.tr("Localizable", "onboarding.position.step1.title", fallback: "Position setup")
      }
    }
    public enum Procedure {
      public enum Step1 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.procedure.step1.subtitle", fallback: "In the navigation panel, go to the \nSalon tab and click Add new service 􁥉")
        public static let title = Loc.tr("Localizable", "onboarding.procedure.step1.title", fallback: "Create procedure")
      }
      public enum Step2 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.procedure.step2.subtitle", fallback: "At the first stage of creation, specify the name of your service, or select a name from the suggested list by tapping 􀇷")
        public static let title = Loc.tr("Localizable", "onboarding.procedure.step2.title", fallback: "Procedure name")
      }
      public enum Step3 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.procedure.step3.subtitle", fallback: "By tapping 􀇷, select a service from the list that has passed the service moderation check. Such services can be flexibly configured, and customers will be able to find you more easily")
        public static let title = Loc.tr("Localizable", "onboarding.procedure.step3.title", fallback: "Existing procedures")
      }
      public enum Step4 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.procedure.step4.subtitle", fallback: "In the last step, select the masters who will provide this service. After that, clients will be able to easily make an appointment with them.")
        public static let title = Loc.tr("Localizable", "onboarding.procedure.step4.title", fallback: "Masters' Choice")
      }
    }
    public enum SalonCreation {
      public enum Step1 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.salon_creation.step1.subtitle", fallback: "From the Home screen, swipe right to open the secondary panel, then tap 􀑎.")
        public static let title = Loc.tr("Localizable", "onboarding.salon_creation.step1.title", fallback: "Salon creation")
      }
      public enum Step2 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.salon_creation.step2.subtitle", fallback: "At the creation stage, you will be offered 3 options for the salon schedule: weekly, shift and daily.")
        public static let title = Loc.tr("Localizable", "onboarding.salon_creation.step2.title", fallback: "Salon schedule setup")
      }
      public enum Step3 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.salon_creation.step3.subtitle", fallback: "The schedule implies separate settings for each week.")
        public static let title = Loc.tr("Localizable", "onboarding.salon_creation.step3.title", fallback: "Week template")
      }
      public enum Step4 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.salon_creation.step4.subtitle", fallback: "Select the number of working and non-working days that will follow each other cyclically. And then set up the hours and breaks on working days.")
        public static let title = Loc.tr("Localizable", "onboarding.salon_creation.step4.title", fallback: "Shift schedule")
      }
      public enum Step5 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.salon_creation.step5.subtitle", fallback: "With a daily schedule, you set up one template that the salon will operate according to every day.")
        public static let title = Loc.tr("Localizable", "onboarding.salon_creation.step5.title", fallback: "Daily schedule")
      }
    }
    public enum SelectServices {
      public static let subtitle = Loc.tr("Localizable", "onboarding.select_services.subtitle", fallback: "Go to the management tab. In the services section, tap +")
      public static let title = Loc.tr("Localizable", "onboarding.select_services.title", fallback: "Select the services you provide")
    }
    public enum SetupSchedule {
      public enum Step1 {
        public static let description = Loc.tr("Localizable", "onboarding.setup_schedule.step1.description", fallback: "Tap on a day cell to add it to the selection for editing")
        public static let title = Loc.tr("Localizable", "onboarding.setup_schedule.step1.title", fallback: "Select days for editing")
      }
      public enum Step2 {
        public static let description = Loc.tr("Localizable", "onboarding.setup_schedule.step2.description", fallback: "Long press on a day to view a brief description")
        public static let title = Loc.tr("Localizable", "onboarding.setup_schedule.step2.title", fallback: "View day information")
      }
    }
    public enum Workplace {
      public enum Step1 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.workplace.step1.subtitle", fallback: "To open the workspace, tap the Posts widget.")
        public static let title = Loc.tr("Localizable", "onboarding.workplace.step1.title", fallback: "Workplace")
      }
      public enum Step2 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.workplace.step2.subtitle", fallback: "In the workspace, tap 􀑎, then assign the client and technician, set the time and procedure, and save the appointment by tapping the “create” button.")
        public static let title = Loc.tr("Localizable", "onboarding.workplace.step2.title", fallback: "Appointment creation")
      }
      public enum Step3 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.workplace.step3.subtitle", fallback: "Hold the recording and drag it to the side to the time and master you want. Then save the selection by tapping “move recording”.")
        public static let title = Loc.tr("Localizable", "onboarding.workplace.step3.title", fallback: "Transferring an entry")
      }
      public enum Step4 {
        public static let subtitle = Loc.tr("Localizable", "onboarding.workplace.step4.subtitle", fallback: "Touch and hold the entry, in the menu that opens, select the desired status.")
        public static let title = Loc.tr("Localizable", "onboarding.workplace.step4.title", fallback: "Status management")
      }
    }
  }
  public enum Reusable {
    public static let add = Loc.tr("Localizable", "reusable.add", fallback: "Add")
    public static let addTo = Loc.tr("Localizable", "reusable.add_to", fallback: "Add to")
    public static let all = Loc.tr("Localizable", "reusable.all", fallback: "All")
    public static let allowButton = Loc.tr("Localizable", "reusable.allow_button", fallback: "Allow")
    public static let apply = Loc.tr("Localizable", "reusable.apply", fallback: "Apply")
    public static let `break` = Loc.tr("Localizable", "reusable.break", fallback: "Break")
    public static let calendar = Loc.tr("Localizable", "reusable.calendar", fallback: "Calendar")
    public static let call = Loc.tr("Localizable", "reusable.call", fallback: "Call")
    public static let cancel = Loc.tr("Localizable", "reusable.cancel", fallback: "Cancel")
    public static func characterCount(_ p1: Int, _ p2: Int) -> String {
      return Loc.tr("Localizable", "reusable.character_count", p1, p2, fallback: "%1$d/%2$d")
    }
    public static let chat = Loc.tr("Localizable", "reusable.chat", fallback: "Chat")
    public static let close = Loc.tr("Localizable", "reusable.close", fallback: "Close")
    public static let `continue` = Loc.tr("Localizable", "reusable.continue", fallback: "Continue")
    public static let copyButton = Loc.tr("Localizable", "reusable.copy_button", fallback: "Copy")
    public static let create = Loc.tr("Localizable", "reusable.create", fallback: "Create")
    public static let delete = Loc.tr("Localizable", "reusable.delete", fallback: "Delete")
    public static let edit = Loc.tr("Localizable", "reusable.edit", fallback: "Edit")
    public static let email = Loc.tr("Localizable", "reusable.email", fallback: "Email")
    public static let english = Loc.tr("Localizable", "reusable.english", fallback: "English")
    public static func filterTagCount(_ p1: Any, _ p2: Int) -> String {
      return Loc.tr("Localizable", "reusable.filter_tag_count", String(describing: p1), p2, fallback: "%1$@ (%2$d)")
    }
    public static let from = Loc.tr("Localizable", "reusable.from", fallback: "from")
    public static let fromPhoneBook = Loc.tr("Localizable", "reusable.from_phone_book", fallback: "From phone book")
    public static let hour = Loc.tr("Localizable", "reusable.hour", fallback: "h")
    public static let info = Loc.tr("Localizable", "reusable.info", fallback: "Information")
    public static let instagram = Loc.tr("Localizable", "reusable.instagram", fallback: "Instagram")
    public static let invitationLink = Loc.tr("Localizable", "reusable.invitation_link", fallback: "Send invitation link")
    public static let join = Loc.tr("Localizable", "reusable.join", fallback: "Join")
    public static let makeAppointment = Loc.tr("Localizable", "reusable.make_appointment", fallback: "Book")
    public static let manual = Loc.tr("Localizable", "reusable.manual", fallback: "Manually")
    public static let minutes = Loc.tr("Localizable", "reusable.minutes", fallback: "min")
    public static let nickname = Loc.tr("Localizable", "reusable.nickname", fallback: "Nickname")
    public static let `none` = Loc.tr("Localizable", "reusable.none", fallback: "None")
    public static let notFound = Loc.tr("Localizable", "reusable.not_found", fallback: "Nothing found")
    public static let ok = Loc.tr("Localizable", "reusable.ok", fallback: "Ok")
    public static let primary = Loc.tr("Localizable", "reusable.primary", fallback: "Primary")
    public static let `repeat` = Loc.tr("Localizable", "reusable.repeat", fallback: "Repeat")
    public static let retry = Loc.tr("Localizable", "reusable.retry", fallback: "Retry")
    public static let russian = Loc.tr("Localizable", "reusable.russian", fallback: "Russian")
    public static let save = Loc.tr("Localizable", "reusable.save", fallback: "Save")
    public static let search = Loc.tr("Localizable", "reusable.search", fallback: "Search")
    public static let select = Loc.tr("Localizable", "reusable.select", fallback: "Select")
    public static let selected = Loc.tr("Localizable", "reusable.selected", fallback: "selected")
    public static let send = Loc.tr("Localizable", "reusable.send", fallback: "Send")
    public static let signInWithGoogle = Loc.tr("Localizable", "reusable.sign_in_with_google", fallback: "Sign in with Google")
    public static let skip = Loc.tr("Localizable", "reusable.skip", fallback: "Skip")
    public static let sms = Loc.tr("Localizable", "reusable.sms", fallback: "SMS")
    public static let submitButton = Loc.tr("Localizable", "reusable.submit_button", fallback: "Done")
    public static let submitText = Loc.tr("Localizable", "reusable.submit_text", fallback: "Please check the entered information. When everything is ready — click 'Done' to save")
    public static let telegram = Loc.tr("Localizable", "reusable.telegram", fallback: "Telegram")
    public static let today = Loc.tr("Localizable", "reusable.today", fallback: "Today")
    public static let tomorrow = Loc.tr("Localizable", "reusable.tomorrow", fallback: "Tomorrow")
    public static let unknown = Loc.tr("Localizable", "reusable.unknown", fallback: "Unknown")
    public static let warning = Loc.tr("Localizable", "reusable.warning", fallback: "Attention")
    public static let whatsApp = Loc.tr("Localizable", "reusable.whats_app", fallback: "WhatsApp")
    public enum Alert {
      public static let clientConfirmation = Loc.tr("Localizable", "reusable.alert.client_confirmation", fallback: "Following the link will sync your order history. The salon associated with this link will be added to your favorites. Do you confirm this action?")
      public static let confirmation = Loc.tr("Localizable", "reusable.alert.confirmation", fallback: "Confirmation")
      public static let congratulations = Loc.tr("Localizable", "reusable.alert.congratulations", fallback: "Congratulations")
      public static let error = Loc.tr("Localizable", "reusable.alert.error", fallback: "Error")
      public static let incompleteAddress = Loc.tr("Localizable", "reusable.alert.incomplete_address", fallback: "Incomplete address")
      public static let incompleteAddressMessage = Loc.tr("Localizable", "reusable.alert.incomplete_address_message", fallback: "Please enter your full address to continue")
      public static let masterConfirmation = Loc.tr("Localizable", "reusable.alert.master_confirmation", fallback: "You've followed a link that will connect you as an employee to the salon associated with this link. After confirmation, you'll be able to provide services at this salon. Do you confirm this action?")
      public static let ok = Loc.tr("Localizable", "reusable.alert.ok", fallback: "Ok")
    }
    public enum CategoryEnum {
      public static let brows = Loc.tr("Localizable", "reusable.category_enum.brows", fallback: "Brows")
      public static let cosmetology = Loc.tr("Localizable", "reusable.category_enum.cosmetology", fallback: "Cosmetology")
      public static let depilation = Loc.tr("Localizable", "reusable.category_enum.depilation", fallback: "Depilation")
      public static let epilation = Loc.tr("Localizable", "reusable.category_enum.epilation", fallback: "Epilation")
      public static let hairdressing = Loc.tr("Localizable", "reusable.category_enum.hairdressing", fallback: "Hairdressing")
      public static let lashes = Loc.tr("Localizable", "reusable.category_enum.lashes", fallback: "Lashes")
      public static let makeup = Loc.tr("Localizable", "reusable.category_enum.makeup", fallback: "Makeup")
      public static let massage = Loc.tr("Localizable", "reusable.category_enum.massage", fallback: "Massage")
      public static let nails = Loc.tr("Localizable", "reusable.category_enum.nails", fallback: "Nails")
      public static let other = Loc.tr("Localizable", "reusable.category_enum.other", fallback: "Other")
      public static let piercing = Loc.tr("Localizable", "reusable.category_enum.piercing", fallback: "Piercing")
      public static let spa = Loc.tr("Localizable", "reusable.category_enum.spa", fallback: "Spa")
      public static let tattoo = Loc.tr("Localizable", "reusable.category_enum.tattoo", fallback: "Tattoo")
    }
  }
  public enum Screen {
    public enum Appointment {
      public static let addToCalendar = Loc.tr("Localizable", "screen.appointment.add_to_calendar", fallback: "Add to calendar")
      public static let addToCalendarAction = Loc.tr("Localizable", "screen.appointment.add_to_calendar_action", fallback: "В календарь")
      public static let calendarAccessMessage = Loc.tr("Localizable", "screen.appointment.calendar_access_message", fallback: "Разрешите доступ к календарю, чтобы добавить запись.")
      public static let calendarAccessTitle = Loc.tr("Localizable", "screen.appointment.calendar_access_title", fallback: "Доступ к календарю")
      public static let calendarNoDefaultCalendarMessage = Loc.tr("Localizable", "screen.appointment.calendar_no_default_calendar_message", fallback: "Не удалось найти календарь по умолчанию.")
      public static let calendarSaveErrorMessage = Loc.tr("Localizable", "screen.appointment.calendar_save_error_message", fallback: "Проверьте доступ к календарю и попробуйте снова.")
      public static let calendarSaveErrorTitle = Loc.tr("Localizable", "screen.appointment.calendar_save_error_title", fallback: "Не удалось добавить")
      public static let contactSalon = Loc.tr("Localizable", "screen.appointment.contact_salon", fallback: "Связаться с салоном")
      public static let descriptionTitle = Loc.tr("Localizable", "screen.appointment.description_title", fallback: "Подготовка")
      public static let editDescription = Loc.tr("Localizable", "screen.appointment.edit_description", fallback: "Изменить процедуру, мастера или время")
      public static let editTitle = Loc.tr("Localizable", "screen.appointment.edit_title", fallback: "Редактировать запись")
      public static let executor = Loc.tr("Localizable", "screen.appointment.executor", fallback: "Professional")
      public static let noAppointments = Loc.tr("Localizable", "screen.appointment.no_appointments", fallback: "You don't have any appointments yet")
      public static let stateAccept = Loc.tr("Localizable", "screen.appointment.state_accept", fallback: "Confirm appointment")
      public static let stateCustomerApproved = Loc.tr("Localizable", "screen.appointment.state_customer_approved", fallback: "Approved")
      public static let stateCustomerCanсeled = Loc.tr("Localizable", "screen.appointment.state_customer_canсeled", fallback: "Canceled")
      public static let stateCustomerReject = Loc.tr("Localizable", "screen.appointment.state_customer_reject", fallback: "Rejected")
      public static let stateCustomerWaiting = Loc.tr("Localizable", "screen.appointment.state_customer_waiting", fallback: "Waiting")
      public static let stateCustomeraTimeOut = Loc.tr("Localizable", "screen.appointment.state_customera_time_out", fallback: "Time expired")
      public enum Alert {
        public static let addError = Loc.tr("Localizable", "screen.appointment.alert.add_error", fallback: "Failed to add appointment to calendar")
        public static let addedToCalendar = Loc.tr("Localizable", "screen.appointment.alert.added_to_calendar", fallback: "Appointment added to calendar")
        public static let success = Loc.tr("Localizable", "screen.appointment.alert.success", fallback: "Success")
      }
    }
    public enum AppointmentActions {
      public static let cancelAction = Loc.tr("Localizable", "screen.appointment_actions.cancel_action", fallback: "Отменить")
      public static let contactAction = Loc.tr("Localizable", "screen.appointment_actions.contact_action", fallback: "Связаться")
      public static let repeatAction = Loc.tr("Localizable", "screen.appointment_actions.repeat_action", fallback: "Повторная запись")
    }
    public enum Assignment {
      public static let client = Loc.tr("Localizable", "screen.assignment.client", fallback: "Customer")
      public static let executor = Loc.tr("Localizable", "screen.assignment.executor", fallback: "Professional")
      public static let inviteClient = Loc.tr("Localizable", "screen.assignment.invite_client", fallback: "Invite client")
      public static let inviteExecutor = Loc.tr("Localizable", "screen.assignment.invite_executor", fallback: "Invite specialist")
      public static let title = Loc.tr("Localizable", "screen.assignment.title", fallback: "Appointment")
      public enum DangerZone {
        public static let cancelAction = Loc.tr("Localizable", "screen.assignment.danger_zone.cancel_action", fallback: "Cancel")
        public static let cancelConfirmMessage = Loc.tr("Localizable", "screen.assignment.danger_zone.cancel_confirm_message", fallback: "The client will be notified about the cancellation.")
        public static let cancelConfirmTitle = Loc.tr("Localizable", "screen.assignment.danger_zone.cancel_confirm_title", fallback: "Cancel appointment?")
        public static let cancelDescription = Loc.tr("Localizable", "screen.assignment.danger_zone.cancel_description", fallback: "Cancel appointment and notify the client")
        public static let cancelTitle = Loc.tr("Localizable", "screen.assignment.danger_zone.cancel_title", fallback: "Cancel appointment")
        public static let confirmDeleteMessage = Loc.tr("Localizable", "screen.assignment.danger_zone.confirm_delete_message", fallback: "Are you sure you want to delete this note permanently?")
        public static let deleteButton = Loc.tr("Localizable", "screen.assignment.danger_zone.delete_button", fallback: "Delete")
        public static let deleteDescription = Loc.tr("Localizable", "screen.assignment.danger_zone.delete_description", fallback: "The client will be notified about the appointment deletion")
        public static let deleteTitle = Loc.tr("Localizable", "screen.assignment.danger_zone.delete_title", fallback: "Delete appointment")
        public static let title = Loc.tr("Localizable", "screen.assignment.danger_zone.title", fallback: "Administration")
      }
      public enum QuickAction {
        public enum Approve {
          public static let buttonTitle = Loc.tr("Localizable", "screen.assignment.quick_action.approve.button_title", fallback: "Confirm")
          public static let confirmMessage = Loc.tr("Localizable", "screen.assignment.quick_action.approve.confirm_message", fallback: "The booking status will be updated immediately.")
          public static let confirmTitle = Loc.tr("Localizable", "screen.assignment.quick_action.approve.confirm_title", fallback: "Confirm booking?")
          public static let title = Loc.tr("Localizable", "screen.assignment.quick_action.approve.title", fallback: "Confirm")
        }
        public enum Complete {
          public static let buttonTitle = Loc.tr("Localizable", "screen.assignment.quick_action.complete.button_title", fallback: "Complete")
          public static let confirmMessage = Loc.tr("Localizable", "screen.assignment.quick_action.complete.confirm_message", fallback: "The visit will be marked as completed.")
          public static let confirmTitle = Loc.tr("Localizable", "screen.assignment.quick_action.complete.confirm_title", fallback: "Complete visit?")
          public static let title = Loc.tr("Localizable", "screen.assignment.quick_action.complete.title", fallback: "Complete")
        }
        public enum NoShow {
          public static let buttonTitle = Loc.tr("Localizable", "screen.assignment.quick_action.no_show.button_title", fallback: "Mark")
          public static let confirmMessage = Loc.tr("Localizable", "screen.assignment.quick_action.no_show.confirm_message", fallback: "The visit will be marked as no-show.")
          public static let confirmTitle = Loc.tr("Localizable", "screen.assignment.quick_action.no_show.confirm_title", fallback: "Mark no-show?")
          public static let title = Loc.tr("Localizable", "screen.assignment.quick_action.no_show.title", fallback: "No-show")
        }
        public enum Reject {
          public static let buttonTitle = Loc.tr("Localizable", "screen.assignment.quick_action.reject.button_title", fallback: "Decline")
          public static let confirmMessage = Loc.tr("Localizable", "screen.assignment.quick_action.reject.confirm_message", fallback: "The booking will be declined.")
          public static let confirmTitle = Loc.tr("Localizable", "screen.assignment.quick_action.reject.confirm_title", fallback: "Decline booking?")
          public static let title = Loc.tr("Localizable", "screen.assignment.quick_action.reject.title", fallback: "Decline")
        }
        public enum Reschedule {
          public static let buttonTitle = Loc.tr("Localizable", "screen.assignment.quick_action.reschedule.button_title", fallback: "Change")
          public static let confirmMessage = Loc.tr("Localizable", "screen.assignment.quick_action.reschedule.confirm_message", fallback: "The time editor will be opened.")
          public static let confirmTitle = Loc.tr("Localizable", "screen.assignment.quick_action.reschedule.confirm_title", fallback: "Change time?")
          public static let title = Loc.tr("Localizable", "screen.assignment.quick_action.reschedule.title", fallback: "Reschedule")
        }
        public enum Start {
          public static let buttonTitle = Loc.tr("Localizable", "screen.assignment.quick_action.start.button_title", fallback: "Start")
          public static let confirmMessage = Loc.tr("Localizable", "screen.assignment.quick_action.start.confirm_message", fallback: "The visit will be moved to the In Progress status.")
          public static let confirmTitle = Loc.tr("Localizable", "screen.assignment.quick_action.start.confirm_title", fallback: "Start visit?")
          public static let title = Loc.tr("Localizable", "screen.assignment.quick_action.start.title", fallback: "Start")
        }
      }
      public enum Status {
        public static let cancelled = Loc.tr("Localizable", "screen.assignment.status.cancelled", fallback: "Cancelled")
        public static let closed = Loc.tr("Localizable", "screen.assignment.status.closed", fallback: "Closed")
        public static let completed = Loc.tr("Localizable", "screen.assignment.status.completed", fallback: "Completed")
        public static let confirmed = Loc.tr("Localizable", "screen.assignment.status.confirmed", fallback: "Confirmed")
        public static let inProgress = Loc.tr("Localizable", "screen.assignment.status.in_progress", fallback: "In progress")
        public static let noShow = Loc.tr("Localizable", "screen.assignment.status.no_show", fallback: "No-show")
        public static let noStatus = Loc.tr("Localizable", "screen.assignment.status.no_status", fallback: "No status")
        public static let pending = Loc.tr("Localizable", "screen.assignment.status.pending", fallback: "Awaiting confirmation")
        public static let scheduled = Loc.tr("Localizable", "screen.assignment.status.scheduled", fallback: "Scheduled")
      }
    }
    public enum Booking {
      public static let addToWalletReminder = Loc.tr("Localizable", "screen.booking.add_to_wallet_reminder", fallback: "Добавьте в Apple Wallet, чтобы не забыть о записи")
      public static let confirmAction = Loc.tr("Localizable", "screen.booking.confirm_action", fallback: "Подтвердить")
      public static let contactSalon = Loc.tr("Localizable", "screen.booking.contact_salon", fallback: "Связаться с салоном")
      public static let dangerZoneDescription = Loc.tr("Localizable", "screen.booking.danger_zone_description", fallback: "Отменить запись и уведомить мастера")
      public static let dangerZoneTitle = Loc.tr("Localizable", "screen.booking.danger_zone_title", fallback: "Отмена записи")
      public static let deleteMessage = Loc.tr("Localizable", "screen.booking.delete_message", fallback: "Запись будет удалена и мастер получит уведомление об отмене.")
      public static let deleteTitle = Loc.tr("Localizable", "screen.booking.delete_title", fallback: "Отменить запись?")
      public static let expired = Loc.tr("Localizable", "screen.booking.expired", fallback: "Истекло")
      public static let pendingConfirmation = Loc.tr("Localizable", "screen.booking.pending_confirmation", fallback: "Ожидает подтверждения салона")
      public static let saveAction = Loc.tr("Localizable", "screen.booking.save_action", fallback: "Сохранить изменения")
      public static let title = Loc.tr("Localizable", "screen.booking.title", fallback: "Согласование записи")
    }
    public enum Catalog {
      public static let complexHeader = Loc.tr("Localizable", "screen.catalog.complex_header", fallback: "Complexes")
      public static let placeholder = Loc.tr("Localizable", "screen.catalog.placeholder", fallback: "No services available")
      public static let procedureHeader = Loc.tr("Localizable", "screen.catalog.procedure_header", fallback: "Procedures")
      public static let serviceSearch = Loc.tr("Localizable", "screen.catalog.service_search", fallback: "Найти услугу")
    }
    public enum CatalogManagement {
      public static let addService = Loc.tr("Localizable", "screen.catalog_management.add_service", fallback: "Add new service")
      public static let allTitle = Loc.tr("Localizable", "screen.catalog_management.all_title", fallback: "All services")
      public static let complexPlaceholder = Loc.tr("Localizable", "screen.catalog_management.complex_placeholder", fallback: "To create a complex, combine several procedures")
      public static let complexs = Loc.tr("Localizable", "screen.catalog_management.complexs", fallback: "Complexes")
      public static let executorBooking = Loc.tr("Localizable", "screen.catalog_management.executor_booking", fallback: "Book")
      public static let executorEdit = Loc.tr("Localizable", "screen.catalog_management.executor_edit", fallback: "Edit")
      public static let procedureAddExecutor = Loc.tr("Localizable", "screen.catalog_management.procedure_add_executor", fallback: "Add specialist")
      public static let procedureInfo = Loc.tr("Localizable", "screen.catalog_management.procedure_info", fallback: "Information")
      public static let procedurePlaceholder = Loc.tr("Localizable", "screen.catalog_management.procedure_placeholder", fallback: "To start working with the salon, create a procedure")
      public static let procedureUnionComplex = Loc.tr("Localizable", "screen.catalog_management.procedure_union_complex", fallback: "Combine into complex")
      public static let procedures = Loc.tr("Localizable", "screen.catalog_management.procedures", fallback: "Procedures")
      public static let search = Loc.tr("Localizable", "screen.catalog_management.search", fallback: "Search")
      public static let serviceSearch = Loc.tr("Localizable", "screen.catalog_management.service_search", fallback: "Search for service")
      public static let title = Loc.tr("Localizable", "screen.catalog_management.title", fallback: "Services")
    }
    public enum Client {
      public static let birthdateTitle = Loc.tr("Localizable", "screen.client.birthdate_title", fallback: "Birth date")
      public static let genderTitle = Loc.tr("Localizable", "screen.client.gender_title", fallback: "Gender")
      public enum Gender {
        public static let female = Loc.tr("Localizable", "screen.client.gender.female", fallback: "Female")
        public static let male = Loc.tr("Localizable", "screen.client.gender.male", fallback: "Male")
      }
    }
    public enum ClientEditable {
      public static let name = Loc.tr("Localizable", "screen.client_editable.name", fallback: "Name")
      public static let yourName = Loc.tr("Localizable", "screen.client_editable.your_name", fallback: "Your name")
    }
    public enum Clients {
      public static let action = Loc.tr("Localizable", "screen.clients.action", fallback: "Add client")
      public static let addHistoryClient = Loc.tr("Localizable", "screen.clients.add_history_client", fallback: "Add appointment")
      public static let createClient = Loc.tr("Localizable", "screen.clients.create_client", fallback: "Add new client")
      public static let findClient = Loc.tr("Localizable", "screen.clients.find_client", fallback: "Search for client")
      public static let historyClient = Loc.tr("Localizable", "screen.clients.history_client", fallback: "Client history")
      public static let search = Loc.tr("Localizable", "screen.clients.search", fallback: "Search")
      public static let title = Loc.tr("Localizable", "screen.clients.title", fallback: "All clients")
    }
    public enum ComplexChunks {
      public static let changeExecutors = Loc.tr("Localizable", "screen.complex_chunks.change_executors", fallback: "Change executors")
      public static let proceduresNotFound = Loc.tr("Localizable", "screen.complex_chunks.procedures_not_found", fallback: "Procedures not found")
      public static let selectedProcedures = Loc.tr("Localizable", "screen.complex_chunks.selected_procedures", fallback: "Selected procedures")
    }
    public enum ComplexEditing {
      public static let title = Loc.tr("Localizable", "screen.complex_editing.title", fallback: "Редактирование набора")
      public static let unsupportedSettingsMessage = Loc.tr("Localizable", "screen.complex_editing.unsupported_settings_message", fallback: "Настройки онлайн-записи и доступа для наборов пока не поддерживаются API. Отправлен запрос на расширение OpenAPI/SDK.")
    }
    public enum Continuation {
      public enum ClientInvite {
        public static let confirmLink = Loc.tr("Localizable", "screen.continuation.client_invite.confirm_link", fallback: "Link account")
        public static let noMatchMessage = Loc.tr("Localizable", "screen.continuation.client_invite.no_match_message", fallback: "We couldn't find a matching account for this client.")
        public static let selectionHint = Loc.tr("Localizable", "screen.continuation.client_invite.selection_hint", fallback: "Select the account that matches this salon client. Only masked contacts are shown.")
        public static let verifiedMatch = Loc.tr("Localizable", "screen.continuation.client_invite.verified_match", fallback: "Verified match")
        public enum Confidence {
          public static let high = Loc.tr("Localizable", "screen.continuation.client_invite.confidence.high", fallback: "High confidence")
          public static let low = Loc.tr("Localizable", "screen.continuation.client_invite.confidence.low", fallback: "Low confidence")
          public static let medium = Loc.tr("Localizable", "screen.continuation.client_invite.confidence.medium", fallback: "Medium confidence")
        }
      }
    }
    public enum DayScheduleUpdate {
      public static let dayOff = Loc.tr("Localizable", "screen.day_schedule_update.day_off", fallback: "Выходной")
      public static let duration = Loc.tr("Localizable", "screen.day_schedule_update.duration", fallback: "Duration")
      public static let endTime = Loc.tr("Localizable", "screen.day_schedule_update.end_time", fallback: "End time")
      public static let startTime = Loc.tr("Localizable", "screen.day_schedule_update.start_time", fallback: "Start time")
      public static let worktime = Loc.tr("Localizable", "screen.day_schedule_update.worktime", fallback: "Work time")
    }
    public enum Debug {
      public static let complexActivateToggle = Loc.tr("Localizable", "screen.debug.complex_activate_toggle", fallback: "Complex activate")
      public static let dashboardProductToggle = Loc.tr("Localizable", "screen.debug.dashboard_product_toggle", fallback: "Dashboard Product")
      public static let featureFlagsSectionTitle = Loc.tr("Localizable", "screen.debug.feature_flags_section_title", fallback: "Feature Flags")
      public static let hideHelpBannerToggle = Loc.tr("Localizable", "screen.debug.hide_help_banner_toggle", fallback: "Hide Help Banner")
      public static let networkRequestOverlayToggle = Loc.tr("Localizable", "screen.debug.network_request_overlay_toggle", fallback: "Network Request Overlay")
      public static let otherSettingsSectionTitle = Loc.tr("Localizable", "screen.debug.other_settings_section_title", fallback: "Other Settings")
      public static let randomBackgroundToggle = Loc.tr("Localizable", "screen.debug.random_background_toggle", fallback: "Random Background")
      public static let resetFeedbackTipAction = Loc.tr("Localizable", "screen.debug.reset_feedback_tip_action", fallback: "Reset Feedback Tip")
      public static let serverUrlPickerTitle = Loc.tr("Localizable", "screen.debug.server_url_picker_title", fallback: "Base")
      public static let serverUrlSectionTitle = Loc.tr("Localizable", "screen.debug.server_url_section_title", fallback: "Server URL")
      public static let tabDatabase = Loc.tr("Localizable", "screen.debug.tab_database", fallback: "DB")
      public static let tabDeviceInfo = Loc.tr("Localizable", "screen.debug.tab_device_info", fallback: "Device info")
      public static let tabLogger = Loc.tr("Localizable", "screen.debug.tab_logger", fallback: "Logger")
      public static let tabToggles = Loc.tr("Localizable", "screen.debug.tab_toggles", fallback: "Toggles")
      public static let tipKitSectionTitle = Loc.tr("Localizable", "screen.debug.tip_kit_section_title", fallback: "TipKit")
      public enum Database {
        public static let available = Loc.tr("Localizable", "screen.debug.database.available", fallback: "Available")
        public static func blobValue(_ p1: Int) -> String {
          return Loc.tr("Localizable", "screen.debug.database.blob_value", p1, fallback: "<BLOB: %1$d bytes>")
        }
        public static let clearAction = Loc.tr("Localizable", "screen.debug.database.clear_action", fallback: "Clear")
        public static let clearAlertMessage = Loc.tr("Localizable", "screen.debug.database.clear_alert_message", fallback: "All local cached rows will be deleted. This action cannot be undone.")
        public static let clearAlertTitle = Loc.tr("Localizable", "screen.debug.database.clear_alert_title", fallback: "Clear local database?")
        public static let exportAction = Loc.tr("Localizable", "screen.debug.database.export_action", fallback: "Export")
        public static let exportOnlyOnIosMessage = Loc.tr("Localizable", "screen.debug.database.export_only_on_ios_message", fallback: "Export is available only on iOS.")
        public static let fileSizeLabel = Loc.tr("Localizable", "screen.debug.database.file_size_label", fallback: "File Size")
        public static func missingFileError(_ p1: Any) -> String {
          return Loc.tr("Localizable", "screen.debug.database.missing_file_error", String(describing: p1), fallback: "Database file not found at path: %1$@")
        }
        public static let navigationTitle = Loc.tr("Localizable", "screen.debug.database.navigation_title", fallback: "SQLite DB")
        public static let noRowsToDisplay = Loc.tr("Localizable", "screen.debug.database.no_rows_to_display", fallback: "No rows to display.")
        public static let noTablesFound = Loc.tr("Localizable", "screen.debug.database.no_tables_found", fallback: "No tables found.")
        public static let notFound = Loc.tr("Localizable", "screen.debug.database.not_found", fallback: "Not Found")
        public static let nullValue = Loc.tr("Localizable", "screen.debug.database.null_value", fallback: "NULL")
        public static let openDataScreenHint = Loc.tr("Localizable", "screen.debug.database.open_data_screen_hint", fallback: "Open any data screen first to populate cache.")
        public static func openReadonlyError(_ p1: Any) -> String {
          return Loc.tr("Localizable", "screen.debug.database.open_readonly_error", String(describing: p1), fallback: "Could not open SQLite database at path: %1$@")
        }
        public static func openReadwriteError(_ p1: Any) -> String {
          return Loc.tr("Localizable", "screen.debug.database.open_readwrite_error", String(describing: p1), fallback: "Could not open SQLite database for clearing at path: %1$@")
        }
        public static let pathLabel = Loc.tr("Localizable", "screen.debug.database.path_label", fallback: "Path")
        public static let prepareExportError = Loc.tr("Localizable", "screen.debug.database.prepare_export_error", fallback: "Could not prepare export files.")
        public static func previewRows(_ p1: Int) -> String {
          return Loc.tr("Localizable", "screen.debug.database.preview_rows", p1, fallback: "Preview: %d row(s)")
        }
        public static func rowNumber(_ p1: Int) -> String {
          return Loc.tr("Localizable", "screen.debug.database.row_number", p1, fallback: "Row #%d")
        }
        public static let rowsPreviewLabel = Loc.tr("Localizable", "screen.debug.database.rows_preview_label", fallback: "Rows (preview)")
        public static let rowsSectionTitle = Loc.tr("Localizable", "screen.debug.database.rows_section_title", fallback: "Rows")
        public static let rowsTotalLabel = Loc.tr("Localizable", "screen.debug.database.rows_total_label", fallback: "Rows (total)")
        public static let sectionTitle = Loc.tr("Localizable", "screen.debug.database.section_title", fallback: "Database")
        public static func showingFirstRows(_ p1: Int) -> String {
          return Loc.tr("Localizable", "screen.debug.database.showing_first_rows", p1, fallback: "Showing first %d rows.")
        }
        public static let sqliteError = Loc.tr("Localizable", "screen.debug.database.sqlite_error", fallback: "SQLite error")
        public static let sqliteExecutionError = Loc.tr("Localizable", "screen.debug.database.sqlite_execution_error", fallback: "SQLite execution error")
        public static let statusLabel = Loc.tr("Localizable", "screen.debug.database.status_label", fallback: "Status")
        public static let summarySectionTitle = Loc.tr("Localizable", "screen.debug.database.summary_section_title", fallback: "Summary")
        public static func tablesTitle(_ p1: Int) -> String {
          return Loc.tr("Localizable", "screen.debug.database.tables_title", p1, fallback: "Tables (%d)")
        }
        public static let unknownValue = Loc.tr("Localizable", "screen.debug.database.unknown_value", fallback: "<UNKNOWN>")
      }
      public enum ErrorGenerator {
        public static let confirmCrashMessage = Loc.tr("Localizable", "screen.debug.error_generator.confirm_crash_message", fallback: "The app will terminate immediately. Use this only to verify crash delivery to Sentry.")
        public static let confirmCrashTitle = Loc.tr("Localizable", "screen.debug.error_generator.confirm_crash_title", fallback: "Generate crash?")
        public static let crashAction = Loc.tr("Localizable", "screen.debug.error_generator.crash_action", fallback: "Crash")
        public static let generateCrashAction = Loc.tr("Localizable", "screen.debug.error_generator.generate_crash_action", fallback: "Generate crash for Sentry")
        public static let sectionTitle = Loc.tr("Localizable", "screen.debug.error_generator.section_title", fallback: "Error Generation")
        public static let simulateNetworkError = Loc.tr("Localizable", "screen.debug.error_generator.simulate_network_error", fallback: "Simulate NetworkError")
        public static let simulatePaymentRequired = Loc.tr("Localizable", "screen.debug.error_generator.simulate_payment_required", fallback: "Simulate 402 Payment Required")
        public static let simulateUnauthorized = Loc.tr("Localizable", "screen.debug.error_generator.simulate_unauthorized", fallback: "Simulate 401 Unauthorized")
      }
    }
    public enum EmployeeEditable {
      public static let name = Loc.tr("Localizable", "screen.employee_editable.name", fallback: "Name")
      public static let yourName = Loc.tr("Localizable", "screen.employee_editable.your_name", fallback: "Your name")
    }
    public enum Employees {
      public static let addAssignment = Loc.tr("Localizable", "screen.employees.add_assignment", fallback: "Book client")
      public static let addEmployee = Loc.tr("Localizable", "screen.employees.add_employee", fallback: "Add employee")
      public static let allTitle = Loc.tr("Localizable", "screen.employees.all_title", fallback: "All employees")
      public static let assignment = Loc.tr("Localizable", "screen.employees.assignment", fallback: "Appointments")
      public static let dismissedFilter = Loc.tr("Localizable", "screen.employees.dismissed_filter", fallback: "Уволенные")
      public static let dismissedTitle = Loc.tr("Localizable", "screen.employees.dismissed_title", fallback: "Уволенные сотрудники")
      public static let invite = Loc.tr("Localizable", "screen.employees.invite", fallback: "Invite")
      public static let masterSearch = Loc.tr("Localizable", "screen.employees.master_search", fallback: "Search for master")
      public static let noDismissedEmployees = Loc.tr("Localizable", "screen.employees.no_dismissed_employees", fallback: "Нет уволенных сотрудников")
      public static let noEmployees = Loc.tr("Localizable", "screen.employees.no_employees", fallback: "No employees")
      public static let service = Loc.tr("Localizable", "screen.employees.service", fallback: "Services")
      public static let title = Loc.tr("Localizable", "screen.employees.title", fallback: "Employees")
      public enum DangerZone {
        public static let cancelAlertMessage = Loc.tr("Localizable", "screen.employees.danger_zone.cancel_alert_message", fallback: "Employee won't be able to join using the sent link")
        public static let cancelAlertTitle = Loc.tr("Localizable", "screen.employees.danger_zone.cancel_alert_title", fallback: "Cancel invitation")
        public static let cancelHint = Loc.tr("Localizable", "screen.employees.danger_zone.cancel_hint", fallback: "Specialist won't be able to connect via link")
        public static let cancelTitle = Loc.tr("Localizable", "screen.employees.danger_zone.cancel_title", fallback: "Cancel invitation")
        public static let fire = Loc.tr("Localizable", "screen.employees.danger_zone.fire", fallback: "Fire")
        public static let fireAlertMessage = Loc.tr("Localizable", "screen.employees.danger_zone.fire_alert_message", fallback: "Please enter the employee's name to confirm")
        public static let fireAlertPlaceholder = Loc.tr("Localizable", "screen.employees.danger_zone.fire_alert_placeholder", fallback: "Employee name")
        public static let fireAlertTitle = Loc.tr("Localizable", "screen.employees.danger_zone.fire_alert_title", fallback: "Fire employee")
        public static let fireAnEmployee = Loc.tr("Localizable", "screen.employees.danger_zone.fire_an_employee", fallback: "Fire employee")
        public static let fireHint = Loc.tr("Localizable", "screen.employees.danger_zone.fire_hint", fallback: "Employee should not have active appointments")
        public static let title = Loc.tr("Localizable", "screen.employees.danger_zone.title", fallback: "Administration")
      }
      public enum Filter {
        public static let active = Loc.tr("Localizable", "screen.employees.filter.active", fallback: "Active")
        public static let createEmployee = Loc.tr("Localizable", "screen.employees.filter.create_employee", fallback: "Add employee")
        public static let invite = Loc.tr("Localizable", "screen.employees.filter.invite", fallback: "Invitations")
        public static let removePosition = Loc.tr("Localizable", "screen.employees.filter.remove_position", fallback: "Delete position")
        public static let reorder = Loc.tr("Localizable", "screen.employees.filter.reorder", fallback: "Change order")
        public static let withService = Loc.tr("Localizable", "screen.employees.filter.with_service", fallback: "Providing services")
        public static let withoutService = Loc.tr("Localizable", "screen.employees.filter.without_service", fallback: "Not providing services")
      }
    }
    public enum ExecutorEditing {
      public static let dangerZoneTitle = Loc.tr("Localizable", "screen.executor_editing.danger_zone_title", fallback: "Опасная зона")
      public static let durationTitle = Loc.tr("Localizable", "screen.executor_editing.duration_title", fallback: "Длительность")
      public static let priceTitle = Loc.tr("Localizable", "screen.executor_editing.price_title", fallback: "Цена")
      public static let stopProvidingConfirmMessage = Loc.tr("Localizable", "screen.executor_editing.stop_providing_confirm_message", fallback: "Исполнитель останется в команде и будет убран только из этой услуги")
      public static let stopProvidingConfirmTitle = Loc.tr("Localizable", "screen.executor_editing.stop_providing_confirm_title", fallback: "Удалить из услуги?")
      public static let stopProvidingHint = Loc.tr("Localizable", "screen.executor_editing.stop_providing_hint", fallback: "Исполнитель останется в команде")
      public static let stopProvidingTitle = Loc.tr("Localizable", "screen.executor_editing.stop_providing_title", fallback: "Удалить из услуги")
      public static let title = Loc.tr("Localizable", "screen.executor_editing.title", fallback: "Исполнитель")
      public static let unsupportedExecutionMessage = Loc.tr("Localizable", "screen.executor_editing.unsupported_execution_message", fallback: "Точечное изменение исполнителя пока не поддерживается API. Нужен отдельный endpoint для execution.")
    }
    public enum FeedbackComposer {
      public static let descriptionPlaceholder = Loc.tr("Localizable", "screen.feedback_composer.description_placeholder", fallback: "Describe the issue and what you expected to happen.")
      public static let descriptionSectionTitle = Loc.tr("Localizable", "screen.feedback_composer.description_section_title", fallback: "What happened?")
      public static let privacyHint = Loc.tr("Localizable", "screen.feedback_composer.privacy_hint", fallback: "Only include personal details you want to share.")
      public static let title = Loc.tr("Localizable", "screen.feedback_composer.title", fallback: "Report a Problem")
      public static let typePickerTitle = Loc.tr("Localizable", "screen.feedback_composer.type_picker_title", fallback: "Type")
      public static let typeSectionTitle = Loc.tr("Localizable", "screen.feedback_composer.type_section_title", fallback: "Type")
    }
    public enum ForceUpdate {
      public static let action = Loc.tr("Localizable", "screen.force_update.action", fallback: "Open App Store")
      public static let message = Loc.tr("Localizable", "screen.force_update.message", fallback: "To continue using the app, update it to the latest version.")
      public static let title = Loc.tr("Localizable", "screen.force_update.title", fallback: "Update required")
    }
    public enum History {
      public static let placeholder = Loc.tr("Localizable", "screen.history.placeholder", fallback: "You don't have any appointments yet")
      public static let title = Loc.tr("Localizable", "screen.history.title", fallback: "History")
    }
    public enum Invite {
      public static let clientEnterMissing = Loc.tr("Localizable", "screen.invite.client_enter_missing", fallback: "To accept, enter the missing characters:")
      public static let clientTitle = Loc.tr("Localizable", "screen.invite.client_title", fallback: "You have been invited as a client")
      public static let employeeTitle = Loc.tr("Localizable", "screen.invite.employee_title", fallback: "You have been invited as an employee")
    }
    public enum KnowledgeBase {
      public static let appointments = Loc.tr("Localizable", "screen.knowledge_base.appointments", fallback: "Appointments")
      public static let clients = Loc.tr("Localizable", "screen.knowledge_base.clients", fallback: "Clients")
      public static let employees = Loc.tr("Localizable", "screen.knowledge_base.employees", fallback: "Employees")
      public static let positionSetup = Loc.tr("Localizable", "screen.knowledge_base.position_setup", fallback: "Position setup")
      public static let scheduleSetup = Loc.tr("Localizable", "screen.knowledge_base.schedule_setup", fallback: "Service creation")
      public static let title = Loc.tr("Localizable", "screen.knowledge_base.title", fallback: "Knowledge base")
      public static let workplaceSetup = Loc.tr("Localizable", "screen.knowledge_base.workplace_setup", fallback: "Workplace setup")
    }
    public enum Main {
      public static let historyAction = Loc.tr("Localizable", "screen.main.history_action", fallback: "Open")
      public static let historyTitle = Loc.tr("Localizable", "screen.main.history_title", fallback: "My appointments")
      public static let mapButton = Loc.tr("Localizable", "screen.main.map_button", fallback: "Map")
      public static let noFavorites = Loc.tr("Localizable", "screen.main.no_favorites", fallback: "No favorites yet")
      public static let noFavoritesDescription = Loc.tr("Localizable", "screen.main.no_favorites_description", fallback: "Start exploring — save your favorite professionals for quick access")
    }
    public enum MainCustomer {
      public static let appointments = Loc.tr("Localizable", "screen.main_customer.appointments", fallback: "Appointments")
    }
    public enum MainCustomerListSearch {
      public static let map = Loc.tr("Localizable", "screen.main_customer_list_search.map", fallback: "Map")
    }
    public enum MainCustomerMapSearch {
      public static let list = Loc.tr("Localizable", "screen.main_customer_map_search.list", fallback: "List")
    }
    public enum MainCustomerSearch {
      public static let customerSearch = Loc.tr("Localizable", "screen.main_customer_search.customer_search", fallback: "Найти клиента")
    }
    public enum Map {
      public static let enableGeo = Loc.tr("Localizable", "screen.map.enable_geo", fallback: "Enable geolocation in settings")
      public static let searchButton = Loc.tr("Localizable", "screen.map.search_button", fallback: "Search in this region")
      public static let searchButtonWarning = Loc.tr("Localizable", "screen.map.search_button_warning", fallback: "Need to zoom in to search")
    }
    public enum Mirror {
      public static let cameraAccessMessage = Loc.tr("Localizable", "screen.mirror.camera_access_message", fallback: "Allow access to the front camera so the mirror can work.")
      public static let cameraAccessTitle = Loc.tr("Localizable", "screen.mirror.camera_access_title", fallback: "No camera access")
    }
    public enum ModelProfile {
      public static let availabilityTitle = Loc.tr("Localizable", "screen.model_profile.availability_title", fallback: "Availability")
      public static let becomeModelAction = Loc.tr("Localizable", "screen.model_profile.become_model_action", fallback: "Become a model")
      public static let birthdateTitle = Loc.tr("Localizable", "screen.model_profile.birthdate_title", fallback: "Birth date")
      public static let changeAddressAction = Loc.tr("Localizable", "screen.model_profile.change_address_action", fallback: "Change address")
      public static let createTitle = Loc.tr("Localizable", "screen.model_profile.create_title", fallback: "Create profile")
      public static let editTitle = Loc.tr("Localizable", "screen.model_profile.edit_title", fallback: "Edit profile")
      public static let genderTitle = Loc.tr("Localizable", "screen.model_profile.gender_title", fallback: "Gender")
      public static let legalTitle = Loc.tr("Localizable", "screen.model_profile.legal_title", fallback: "Legal consents")
      public static let offersAction = Loc.tr("Localizable", "screen.model_profile.offers_action", fallback: "Offers")
      public static let offersDescription = Loc.tr("Localizable", "screen.model_profile.offers_description", fallback: "Free appointments from salons matching your model profile will appear here")
      public static let offersTitle = Loc.tr("Localizable", "screen.model_profile.offers_title", fallback: "Offers for models")
      public static let personalSectionTitle = Loc.tr("Localizable", "screen.model_profile.personal_section_title", fallback: "Personal details")
      public static let photosHint = Loc.tr("Localizable", "screen.model_profile.photos_hint", fallback: "Upload photos: portrait, profile, full-length")
      public static let photosTitle = Loc.tr("Localizable", "screen.model_profile.photos_title", fallback: "Photos (1-6)")
      public static let searchAreaPlaceholder = Loc.tr("Localizable", "screen.model_profile.search_area_placeholder", fallback: "Select an address to set the search area")
      public static let searchAreaTitle = Loc.tr("Localizable", "screen.model_profile.search_area_title", fallback: "Search area")
      public static let searchRadiusLabel = Loc.tr("Localizable", "screen.model_profile.search_radius_label", fallback: "Search radius")
      public enum Action {
        public static let activate = Loc.tr("Localizable", "screen.model_profile.action.activate", fallback: "Activate")
        public static let suspend = Loc.tr("Localizable", "screen.model_profile.action.suspend", fallback: "Suspend")
      }
      public enum Availability {
        public static let favoritesOnly = Loc.tr("Localizable", "screen.model_profile.availability.favorites_only", fallback: "Only favorite salons")
        public static let favoritesOnlyHint = Loc.tr("Localizable", "screen.model_profile.availability.favorites_only_hint", fallback: "Only salons you added to favorites")
        public static let weekdays = Loc.tr("Localizable", "screen.model_profile.availability.weekdays", fallback: "Weekdays")
        public static let weekends = Loc.tr("Localizable", "screen.model_profile.availability.weekends", fallback: "Weekends")
      }
      public enum Gender {
        public static let female = Loc.tr("Localizable", "screen.model_profile.gender.female", fallback: "Female")
        public static let male = Loc.tr("Localizable", "screen.model_profile.gender.male", fallback: "Male")
        public static let unspecified = Loc.tr("Localizable", "screen.model_profile.gender.unspecified", fallback: "Not specified")
      }
      public enum Legal {
        public static let platformRules = Loc.tr("Localizable", "screen.model_profile.legal.platform_rules", fallback: "I agree with the platform rules")
        public static let shootingMaterials = Loc.tr("Localizable", "screen.model_profile.legal.shooting_materials", fallback: "I agree to filming and the use of materials")
      }
      public enum Status {
        public static let active = Loc.tr("Localizable", "screen.model_profile.status.active", fallback: "Active")
        public static let suspended = Loc.tr("Localizable", "screen.model_profile.status.suspended", fallback: "Suspended")
        public static let title = Loc.tr("Localizable", "screen.model_profile.status.title", fallback: "Profile status")
      }
      public enum Widget {
        public static let inviteDescription = Loc.tr("Localizable", "screen.model_profile.widget.invite_description", fallback: "Receive free appointments from salons")
        public static let inviteTitle = Loc.tr("Localizable", "screen.model_profile.widget.invite_title", fallback: "Become a model")
        public static let title = Loc.tr("Localizable", "screen.model_profile.widget.title", fallback: "Model profile")
      }
    }
    public enum Notice {
      public static let placeholder = Loc.tr("Localizable", "screen.notice.placeholder", fallback: "You haven't received any notifications yet")
      public static let readAll = Loc.tr("Localizable", "screen.notice.read_all", fallback: "Read all")
      public static let title = Loc.tr("Localizable", "screen.notice.title", fallback: "Notifications")
    }
    public enum Offtime {
      public static let currentEmployee = Loc.tr("Localizable", "screen.offtime.current_employee", fallback: "Current employee")
      public static let employee = Loc.tr("Localizable", "screen.offtime.employee", fallback: "Employee")
      public static let reason = Loc.tr("Localizable", "screen.offtime.reason", fallback: "Reason")
      public static let reasonPlaceholder = Loc.tr("Localizable", "screen.offtime.reason_placeholder", fallback: "Reason (optional)")
      public static let title = Loc.tr("Localizable", "screen.offtime.title", fallback: "Reserve time")
    }
    public enum Payments {
      public enum TerminalCheckout {
        public static let cashDescription = Loc.tr("Localizable", "screen.payments.terminal_checkout.cash_description", fallback: "Cash payment is recorded in this first iteration.")
        public static let cashTitle = Loc.tr("Localizable", "screen.payments.terminal_checkout.cash_title", fallback: "Cash")
        public static let collectWithTapToPay = Loc.tr("Localizable", "screen.payments.terminal_checkout.collect_with_tap_to_pay", fallback: "Collect with Tap to Pay")
        public static let completeWithCash = Loc.tr("Localizable", "screen.payments.terminal_checkout.complete_with_cash", fallback: "Complete with cash")
        public static let paymentMethod = Loc.tr("Localizable", "screen.payments.terminal_checkout.payment_method", fallback: "Payment method")
        public static let serviceAmount = Loc.tr("Localizable", "screen.payments.terminal_checkout.service_amount", fallback: "Service amount")
        public static let serviceAmountFootnote = Loc.tr("Localizable", "screen.payments.terminal_checkout.service_amount_footnote", fallback: "This amount comes from the current booking.")
        public static let subtitle = Loc.tr("Localizable", "screen.payments.terminal_checkout.subtitle", fallback: "Review the final amount and finish the visit.")
        public static let summary = Loc.tr("Localizable", "screen.payments.terminal_checkout.summary", fallback: "Summary")
        public static let tapToPayDescription = Loc.tr("Localizable", "screen.payments.terminal_checkout.tap_to_pay_description", fallback: "Tap to Pay will be added in a later iteration.")
        public static let tapToPayTitle = Loc.tr("Localizable", "screen.payments.terminal_checkout.tap_to_pay_title", fallback: "Tap to Pay")
        public static let tip = Loc.tr("Localizable", "screen.payments.terminal_checkout.tip", fallback: "Tip")
        public static let title = Loc.tr("Localizable", "screen.payments.terminal_checkout.title", fallback: "Collect payment")
        public static let totalToCollect = Loc.tr("Localizable", "screen.payments.terminal_checkout.total_to_collect", fallback: "Total to collect")
        public static let unavailablePaymentMethodMessage = Loc.tr("Localizable", "screen.payments.terminal_checkout.unavailable_payment_method_message", fallback: "This payment method is not available yet.")
      }
      public enum TipSelection {
        public static let continueToPayment = Loc.tr("Localizable", "screen.payments.tip_selection.continue_to_payment", fallback: "Continue to payment")
        public static let customSubtitle = Loc.tr("Localizable", "screen.payments.tip_selection.custom_subtitle", fallback: "enter your own amount")
        public static let customTip = Loc.tr("Localizable", "screen.payments.tip_selection.custom_tip", fallback: "Custom")
        public static let customTipAmount = Loc.tr("Localizable", "screen.payments.tip_selection.custom_tip_amount", fallback: "Custom tip amount")
        public static let noTip = Loc.tr("Localizable", "screen.payments.tip_selection.no_tip", fallback: "No tip")
        public static let noneSubtitle = Loc.tr("Localizable", "screen.payments.tip_selection.none_subtitle", fallback: "continue without tip")
        public static let percentSubtitle = Loc.tr("Localizable", "screen.payments.tip_selection.percent_subtitle", fallback: "of service total")
        public static let subtitle = Loc.tr("Localizable", "screen.payments.tip_selection.subtitle", fallback: "Choose a percentage or enter a custom amount.")
        public static let title = Loc.tr("Localizable", "screen.payments.tip_selection.title", fallback: "Add a tip")
      }
    }
    public enum Paywall {
      public static let buttonText = Loc.tr("Localizable", "screen.paywall.button_text", fallback: "Subscribe")
      public static let expirationDate = Loc.tr("Localizable", "screen.paywall.expiration_date", fallback: "until %{date}")
      public static let gift = Loc.tr("Localizable", "screen.paywall.gift", fallback: "+2 month")
      public static let month = Loc.tr("Localizable", "screen.paywall.month", fallback: "Month")
      public static let termsAndConditions = Loc.tr("Localizable", "screen.paywall.terms_and_conditions", fallback: "Terms and Conditions")
      public static let title = Loc.tr("Localizable", "screen.paywall.title", fallback: "Get rid of limitations")
      public static let year = Loc.tr("Localizable", "screen.paywall.year", fallback: "Year")
      public enum Action {
        public static let connect = Loc.tr("Localizable", "screen.paywall.action.connect", fallback: "Subscribe")
        public static let contact = Loc.tr("Localizable", "screen.paywall.action.contact", fallback: "Contact")
      }
      public enum Tariff {
        public static let advanced = Loc.tr("Localizable", "screen.paywall.tariff.advanced", fallback: "Advanced")
        public static let base = Loc.tr("Localizable", "screen.paywall.tariff.base", fallback: "Basic")
        public static let customPrice = Loc.tr("Localizable", "screen.paywall.tariff.custom_price", fallback: "Custom price")
        public static let start = Loc.tr("Localizable", "screen.paywall.tariff.start", fallback: "Starter")
      }
    }
    public enum Permissions {
      public static let appointmentCredTitle = Loc.tr("Localizable", "screen.permissions.appointment_cred_title", fallback: "Access to appointments")
      public static let clientCredEdit = Loc.tr("Localizable", "screen.permissions.client_cred_edit", fallback: "Can edit")
      public static let clientCredTitle = Loc.tr("Localizable", "screen.permissions.client_cred_title", fallback: "Access to client database")
      public static let clientCredVisibleBaseInfo = Loc.tr("Localizable", "screen.permissions.client_cred_visible_base_info", fallback: "Basic information visible")
      public static let clientCredVisibleContacts = Loc.tr("Localizable", "screen.permissions.client_cred_visible_contacts", fallback: "Contacts visible")
      public static let credOtherEdit = Loc.tr("Localizable", "screen.permissions.cred_other_edit", fallback: "Can edit all")
      public static let credOwnEdit = Loc.tr("Localizable", "screen.permissions.cred_own_edit", fallback: "Can edit own")
      public static let employeeCredEdit = Loc.tr("Localizable", "screen.permissions.employee_cred_edit", fallback: "Can edit")
      public static let employeeCredTitle = Loc.tr("Localizable", "screen.permissions.employee_cred_title", fallback: "Access to employees")
      public static let employeeCredVisible = Loc.tr("Localizable", "screen.permissions.employee_cred_visible", fallback: "Employees visible")
      public static let financeCredTitle = Loc.tr("Localizable", "screen.permissions.finance_cred_title", fallback: "Access to finances")
      public static let notifyCredTitle = Loc.tr("Localizable", "screen.permissions.notify_cred_title", fallback: "Access to notifications")
      public static let ownerToggleDescription = Loc.tr("Localizable", "screen.permissions.owner_toggle_description", fallback: "Granting this access gives the person full control over the workspace")
      public static let ownerToggleTitle = Loc.tr("Localizable", "screen.permissions.owner_toggle_title", fallback: "Co-owner")
      public static let positionCredTitle = Loc.tr("Localizable", "screen.permissions.position_cred_title", fallback: "Access to positions")
      public static let procedureCredTitle = Loc.tr("Localizable", "screen.permissions.procedure_cred_title", fallback: "Access to services")
      public static let salaryCredTitle = Loc.tr("Localizable", "screen.permissions.salary_cred_title", fallback: "Access to salary")
      public static let salonCredTitle = Loc.tr("Localizable", "screen.permissions.salon_cred_title", fallback: "Access to salon information")
      public static let statisticCredTitle = Loc.tr("Localizable", "screen.permissions.statistic_cred_title", fallback: "Access to statistics")
      public static let title = Loc.tr("Localizable", "screen.permissions.title", fallback: "Access")
      public static let worktimeCredTitle = Loc.tr("Localizable", "screen.permissions.worktime_cred_title", fallback: "Access to schedule")
    }
    public enum Position {
      public static let action = Loc.tr("Localizable", "screen.position.action", fallback: "Create position")
      public static let appointments = Loc.tr("Localizable", "screen.position.appointments", fallback: "Access to appointments")
      public static let contact = Loc.tr("Localizable", "screen.position.contact", fallback: "Access to contacts")
      public static let employee = Loc.tr("Localizable", "screen.position.employee", fallback: "Access to employees")
      public static let finance = Loc.tr("Localizable", "screen.position.finance", fallback: "Access to finances")
      public static let notifications = Loc.tr("Localizable", "screen.position.notifications", fallback: "Access to notifications")
      public static let owner = Loc.tr("Localizable", "screen.position.owner", fallback: "Owner")
      public static let position = Loc.tr("Localizable", "screen.position.position", fallback: "Access to positions")
      public static let procedure = Loc.tr("Localizable", "screen.position.procedure", fallback: "Access to procedures")
      public static let salon = Loc.tr("Localizable", "screen.position.salon", fallback: "Access to salons")
      public static let statistic = Loc.tr("Localizable", "screen.position.statistic", fallback: "Access to statistics")
      public static let timetable = Loc.tr("Localizable", "screen.position.timetable", fallback: "Access to schedule")
      public static let title = Loc.tr("Localizable", "screen.position.title", fallback: "Positions")
      public enum DangerZone {
        public static let deleteTitle = Loc.tr("Localizable", "screen.position.danger_zone.delete_title", fallback: "Delete position")
      }
      public enum FixPrice {
        public static let chooseType = Loc.tr("Localizable", "screen.position.fix_price.choose_type", fallback: "Choose type")
        public static let dailySalary = Loc.tr("Localizable", "screen.position.fix_price.daily_salary", fallback: "Daily salary")
        public static let fixedPayment = Loc.tr("Localizable", "screen.position.fix_price.fixed_payment", fallback: "Fixed payment")
        public static let hourlyRate = Loc.tr("Localizable", "screen.position.fix_price.hourly_rate", fallback: "Hourly rate")
        public static let monthlySalary = Loc.tr("Localizable", "screen.position.fix_price.monthly_salary", fallback: "Monthly salary")
      }
      public enum PaymentsPart {
        public static let addCondition = Loc.tr("Localizable", "screen.position.payments_part.add_condition", fallback: "Add condition")
        public static let partOfWork = Loc.tr("Localizable", "screen.position.payments_part.part_of_work", fallback: "Payment for part of work")
      }
      public enum Percent {
        public static let percent = Loc.tr("Localizable", "screen.position.percent.percent", fallback: "Percent")
        public static let percentOfSalary = Loc.tr("Localizable", "screen.position.percent.percent_of_salary", fallback: "Percent of profit")
      }
      public enum Permission {
        public static let accessRules = Loc.tr("Localizable", "screen.position.permission.access_rules", fallback: "Access rights")
        public static let termsOfRemu = Loc.tr("Localizable", "screen.position.permission.terms_of_remu", fallback: "Payment terms")
      }
      public enum Salary {
        public static let profitPercentage = Loc.tr("Localizable", "screen.position.salary.profit_percentage", fallback: "Profit percentage")
        public static let termsNotAdd = Loc.tr("Localizable", "screen.position.salary.terms_not_add", fallback: "Terms not added")
      }
      public enum Sheet {
        public enum Permission {
          public static let access = Loc.tr("Localizable", "screen.position.sheet.permission.access", fallback: "Access")
          public static let chooseAll = Loc.tr("Localizable", "screen.position.sheet.permission.choose_all", fallback: "Choose all")
        }
        public enum SalaryContent {
          public static let payrollCustm = Loc.tr("Localizable", "screen.position.sheet.salary_content.payroll_custm", fallback: "Salary setup")
        }
      }
    }
    public enum PositionEditable {
      public static let name = Loc.tr("Localizable", "screen.position_editable.name", fallback: "Name")
      public static let yourName = Loc.tr("Localizable", "screen.position_editable.your_name", fallback: "Your name")
    }
    public enum ProcedureEditing {
      public static let serviceDescription = Loc.tr("Localizable", "screen.procedure_editing.service_description", fallback: "Service description")
      public static let serviceDuration = Loc.tr("Localizable", "screen.procedure_editing.service_duration", fallback: "Service duration")
      public static let serviceName = Loc.tr("Localizable", "screen.procedure_editing.service_name", fallback: "Service name")
      public static let servicePrice = Loc.tr("Localizable", "screen.procedure_editing.service_price", fallback: "Service price")
      public static let serviceUpdate = Loc.tr("Localizable", "screen.procedure_editing.service_update", fallback: "Service update")
      public static let yourDescription = Loc.tr("Localizable", "screen.procedure_editing.your_description", fallback: "Your description")
      public static let yourName = Loc.tr("Localizable", "screen.procedure_editing.your_name", fallback: "Your name")
    }
    public enum Products {
      public static let actions = Loc.tr("Localizable", "screen.products.actions", fallback: "Действия")
      public static let addAction = Loc.tr("Localizable", "screen.products.add_action", fallback: "Добавить товар")
      public static let deleteMessage = Loc.tr("Localizable", "screen.products.delete_message", fallback: "Это действие нельзя отменить.")
      public static let deleteTitle = Loc.tr("Localizable", "screen.products.delete_title", fallback: "Удалить товар?")
      public static let edit = Loc.tr("Localizable", "screen.products.edit", fallback: "Изменить")
      public static let emptyPlaceholder = Loc.tr("Localizable", "screen.products.empty_placeholder", fallback: "Товары не найдены")
      public static let inStockSuffix = Loc.tr("Localizable", "screen.products.in_stock_suffix", fallback: "в наличии")
      public static let searchPlaceholder = Loc.tr("Localizable", "screen.products.search_placeholder", fallback: "Искать товары")
      public static let title = Loc.tr("Localizable", "screen.products.title", fallback: "Товары")
      public enum Field {
        public static let amount = Loc.tr("Localizable", "screen.products.field.amount", fallback: "Сумма")
        public static let averagePrice = Loc.tr("Localizable", "screen.products.field.average_price", fallback: "Средняя стоимость")
        public static let barcode = Loc.tr("Localizable", "screen.products.field.barcode", fallback: "Штрихкод товара")
        public static let brand = Loc.tr("Localizable", "screen.products.field.brand", fallback: "Бренд")
        public static let category = Loc.tr("Localizable", "screen.products.field.category", fallback: "Категория товара")
        public static let description = Loc.tr("Localizable", "screen.products.field.description", fallback: "Описание товара")
        public static let noValue = Loc.tr("Localizable", "screen.products.field.no_value", fallback: "-")
        public static let retailPrice = Loc.tr("Localizable", "screen.products.field.retail_price", fallback: "Розничная цена")
        public static let shortDescription = Loc.tr("Localizable", "screen.products.field.short_description", fallback: "Краткое описание")
        public static let sku = Loc.tr("Localizable", "screen.products.field.sku", fallback: "Основной артикул")
        public static let stockQuantity = Loc.tr("Localizable", "screen.products.field.stock_quantity", fallback: "Товар в наличии")
        public static let supplier = Loc.tr("Localizable", "screen.products.field.supplier", fallback: "Поставщик")
        public static let supplyPrice = Loc.tr("Localizable", "screen.products.field.supply_price", fallback: "Цена поставки")
        public static let totalCost = Loc.tr("Localizable", "screen.products.field.total_cost", fallback: "Общая стоимость")
        public static let totalRetailPrice = Loc.tr("Localizable", "screen.products.field.total_retail_price", fallback: "Общая розничная стоимость")
        public static let totalSupplyPrice = Loc.tr("Localizable", "screen.products.field.total_supply_price", fallback: "Общая стоимость поставки")
      }
      public enum Section {
        public static let basicInfo = Loc.tr("Localizable", "screen.products.section.basic_info", fallback: "Основная информация")
        public static let description = Loc.tr("Localizable", "screen.products.section.description", fallback: "Описание")
        public static let stockInfo = Loc.tr("Localizable", "screen.products.section.stock_info", fallback: "Информация о запасах")
      }
      public enum Tax {
        public static let `none` = Loc.tr("Localizable", "screen.products.tax.none", fallback: "По умолчанию: Без налога")
        public static let vat10 = Loc.tr("Localizable", "screen.products.tax.vat10", fallback: "НДС 10%")
        public static let vat20 = Loc.tr("Localizable", "screen.products.tax.vat20", fallback: "НДС 20%")
      }
      public enum Unit {
        public static let grams = Loc.tr("Localizable", "screen.products.unit.grams", fallback: "Граммы (g)")
        public static let milliliters = Loc.tr("Localizable", "screen.products.unit.milliliters", fallback: "Миллилитры (ml)")
        public static let pieces = Loc.tr("Localizable", "screen.products.unit.pieces", fallback: "Штуки (pcs)")
      }
    }
    public enum Profile {
      public static let createAction = Loc.tr("Localizable", "screen.profile.create_action", fallback: "Create")
      public static let createCustomerMessage = Loc.tr("Localizable", "screen.profile.create_customer_message", fallback: "You will be able to find salons and book services")
      public static let createCustomerTitle = Loc.tr("Localizable", "screen.profile.create_customer_title", fallback: "Create a client")
      public static let createWorkspaceMessage = Loc.tr("Localizable", "screen.profile.create_workspace_message", fallback: "You can also create multiple workspaces for different salons.")
      public static let createWorkspaceTitle = Loc.tr("Localizable", "screen.profile.create_workspace_title", fallback: "Create a workspace")
      public static let mode = Loc.tr("Localizable", "screen.profile.mode", fallback: "Mode")
      public static let switchAction = Loc.tr("Localizable", "screen.profile.switch_action", fallback: "Toggle")
      public static let switchToCustomerMessage = Loc.tr("Localizable", "screen.profile.switch_to_customer_message", fallback: "The app allows you to find the best professionals and book services.")
      public static let switchToCustomerTitle = Loc.tr("Localizable", "screen.profile.switch_to_customer_title", fallback: "Switch to Client")
      public static let switchToProfessionalMessage = Loc.tr("Localizable", "screen.profile.switch_to_professional_message", fallback: "The app allows you to manage all workspaces together with employees.")
      public static let switchToProfessionalTitle = Loc.tr("Localizable", "screen.profile.switch_to_professional_title", fallback: "Switch to Professional")
      public static let title = Loc.tr("Localizable", "screen.profile.title", fallback: "Profile")
      public enum AppIcon {
        public static let title = Loc.tr("Localizable", "screen.profile.app_icon.title", fallback: "App Icon")
      }
      public enum DangerZone {
        public static let deleteHint = Loc.tr("Localizable", "screen.profile.danger_zone.delete_hint", fallback: "This action cannot be undone")
        public static let deleteMessageAlert = Loc.tr("Localizable", "screen.profile.danger_zone.delete_message_alert", fallback: "To confirm, enter your nickname in the field below")
        public static let deletePlaceholder = Loc.tr("Localizable", "screen.profile.danger_zone.delete_placeholder", fallback: "Nickname")
        public static let deleteTitle = Loc.tr("Localizable", "screen.profile.danger_zone.delete_title", fallback: "Delete user")
        public static let deleteTitleAlert = Loc.tr("Localizable", "screen.profile.danger_zone.delete_title_alert", fallback: "The action cannot be undone. Are you sure you want to delete?")
        public static let logout = Loc.tr("Localizable", "screen.profile.danger_zone.logout", fallback: "Logout")
        public static let logoutHint = Loc.tr("Localizable", "screen.profile.danger_zone.logout_hint", fallback: "Log out of your account")
        public static let logoutMessageAlert = Loc.tr("Localizable", "screen.profile.danger_zone.logout_message_alert", fallback: "Please confirm that you want to log out")
        public static let logoutTitleAlert = Loc.tr("Localizable", "screen.profile.danger_zone.logout_title_alert", fallback: "Attention")
        public static let subscription = Loc.tr("Localizable", "screen.profile.danger_zone.subscription", fallback: "Subscription")
        public static let title = Loc.tr("Localizable", "screen.profile.danger_zone.title", fallback: "Danger zone")
        public static let withoutSubscription = Loc.tr("Localizable", "screen.profile.danger_zone.without_subscription", fallback: "Without a subscription nothing will work")
      }
      public enum Iam {
        public static let customer = Loc.tr("Localizable", "screen.profile.iam.customer", fallback: "Customer")
        public static let customerRegister = Loc.tr("Localizable", "screen.profile.iam.customer_register", fallback: "Register like customer")
        public static let pro = Loc.tr("Localizable", "screen.profile.iam.pro", fallback: "Professional")
        public static let proAddWorkplace = Loc.tr("Localizable", "screen.profile.iam.pro_add_workplace", fallback: "Register like professional")
        public static let title = Loc.tr("Localizable", "screen.profile.iam.title", fallback: "Select Mode")
      }
      public enum Language {
        public static let action = Loc.tr("Localizable", "screen.profile.language.action", fallback: "Открыть настройки языка")
        public static let message = Loc.tr("Localizable", "screen.profile.language.message", fallback: "Откроем системные настройки приложения, где можно выбрать язык интерфейса")
        public static let title = Loc.tr("Localizable", "screen.profile.language.title", fallback: "Язык приложения")
      }
      public enum Support {
        public static let action = Loc.tr("Localizable", "screen.profile.support.action", fallback: "Live chat support")
        public static let message = Loc.tr("Localizable", "screen.profile.support.message", fallback: "We're here to help! If you have any questions or issues, our support team is always ready to assist you")
        public static let notInstall = Loc.tr("Localizable", "screen.profile.support.not_install", fallback: "Telegram app is not installed")
        public static let title = Loc.tr("Localizable", "screen.profile.support.title", fallback: "Have Questions? We're Here!")
        public static let unknownId = Loc.tr("Localizable", "screen.profile.support.unknown_id", fallback: "Unknown")
        public static let userMessage = Loc.tr("Localizable", "screen.profile.support.user_message", fallback: "Hello, I need help! My ID: ")
      }
    }
    public enum ProfileEditing {
      public static let chooseFromGallery = Loc.tr("Localizable", "screen.profile_editing.choose_from_gallery", fallback: "Choose from gallery")
      public static let completionTitle = Loc.tr("Localizable", "screen.profile_editing.completion_title", fallback: "Add information")
      public static let customerContactValidation = Loc.tr("Localizable", "screen.profile_editing.customer_contact_validation", fallback: "Add a contact method salons can use for bookings.")
      public static let editImage = Loc.tr("Localizable", "screen.profile_editing.edit_image", fallback: "Edit")
      public static let name = Loc.tr("Localizable", "screen.profile_editing.name", fallback: "Name")
      public static let nameValidation = Loc.tr("Localizable", "screen.profile_editing.name_validation", fallback: "Your name helps people know how to address you.")
      public static let profilePhoto = Loc.tr("Localizable", "screen.profile_editing.profile_photo", fallback: "Profile name")
      public static let recoveryContactValidation = Loc.tr("Localizable", "screen.profile_editing.recovery_contact_validation", fallback: "Add a recovery contact method.")
      public static let yourName = Loc.tr("Localizable", "screen.profile_editing.your_name", fallback: "Your name")
    }
    public enum Public {
      public static let clientButton = Loc.tr("Localizable", "screen.public.client_button", fallback: "Continue as Client")
      public static let continuationAction = Loc.tr("Localizable", "screen.public.continuation_action", fallback: "Press the button to continue")
      public static let proButton = Loc.tr("Localizable", "screen.public.pro_button", fallback: "Continue as Specialist")
      public static let welcome = Loc.tr("Localizable", "screen.public.welcome", fallback: "Welcome to Maetry!")
      public enum Card1 {
        public static let address = Loc.tr("Localizable", "screen.public.card1.address", fallback: "Tolkacheva street, 2B")
        public static let name = Loc.tr("Localizable", "screen.public.card1.name", fallback: "Salon Rose")
        public static let schedule = Loc.tr("Localizable", "screen.public.card1.schedule", fallback: "mon-sun 9:00 AM - 9:00 PM")
      }
      public enum Card2 {
        public static let address = Loc.tr("Localizable", "screen.public.card2.address", fallback: "Tolkacheva street, 2B")
        public static let name = Loc.tr("Localizable", "screen.public.card2.name", fallback: "ASTEZIS")
        public static let schedule = Loc.tr("Localizable", "screen.public.card2.schedule", fallback: "mon-sun 9:00 AM - 9:00 PM")
      }
      public enum Card3 {
        public static let address = Loc.tr("Localizable", "screen.public.card3.address", fallback: "Tolkacheva street, 2B")
        public static let name = Loc.tr("Localizable", "screen.public.card3.name", fallback: "Beauty Tutti")
        public static let schedule = Loc.tr("Localizable", "screen.public.card3.schedule", fallback: "mon-sun 9:00 AM - 9:00 PM")
      }
    }
    public enum Salary {
      public static let alertTitle = Loc.tr("Localizable", "screen.salary.alert_title", fallback: "Enter value")
      public static let percentTitle = Loc.tr("Localizable", "screen.salary.percent_title", fallback: "Percent")
      public static let percentageOfProfit = Loc.tr("Localizable", "screen.salary.percentage_of_profit", fallback: "Percent of profit")
      public static let pieceworkTitle = Loc.tr("Localizable", "screen.salary.piecework_title", fallback: "Piecework payment")
      public static let selectType = Loc.tr("Localizable", "screen.salary.select_type", fallback: "Choose type")
      public static let title = Loc.tr("Localizable", "screen.salary.title", fallback: "Salary")
      public static let wageTitle = Loc.tr("Localizable", "screen.salary.wage_title", fallback: "Fixed payment")
    }
    public enum Salon {
      public static let action = Loc.tr("Localizable", "screen.salon.action", fallback: "Book")
      public enum Catalog {
        public static let action = Loc.tr("Localizable", "screen.salon.catalog.action", fallback: "Open")
        public static let title = Loc.tr("Localizable", "screen.salon.catalog.title", fallback: "Service catalog")
      }
      public enum Description {
        public static let hide = Loc.tr("Localizable", "screen.salon.description.hide", fallback: "Hide")
        public static let showMore = Loc.tr("Localizable", "screen.salon.description.show_more", fallback: "Show more")
        public static let title = Loc.tr("Localizable", "screen.salon.description.title", fallback: "Description")
      }
      public enum Master {
        public static let action = Loc.tr("Localizable", "screen.salon.master.action", fallback: "All")
        public static let title = Loc.tr("Localizable", "screen.salon.master.title", fallback: "Specialists")
      }
    }
    public enum Schedule {
      public static let addBreak = Loc.tr("Localizable", "screen.schedule.add_break", fallback: "Add break")
      public static let alertTitleDayoff = Loc.tr("Localizable", "screen.schedule.alert_title_dayoff", fallback: "Attention!")
      public static let breakHours = Loc.tr("Localizable", "screen.schedule.break_hours", fallback: "Break")
      public static let dailySchedule = Loc.tr("Localizable", "screen.schedule.daily_schedule", fallback: "Daily schedule")
      public static let dayoff = Loc.tr("Localizable", "screen.schedule.dayoff", fallback: "Day off")
      public static let dayoffShort = Loc.tr("Localizable", "screen.schedule.dayoff_short", fallback: "Off")
      public static let deleteVacation = Loc.tr("Localizable", "screen.schedule.delete_vacation", fallback: "Delete vacation")
      public static let end = Loc.tr("Localizable", "screen.schedule.end", fallback: "End")
      public static let hideMaster = Loc.tr("Localizable", "screen.schedule.hide_master", fallback: "Hide specialist")
      public static let makeItDayoff = Loc.tr("Localizable", "screen.schedule.make_it_dayoff", fallback: "Make it a day off")
      public static let messageTitleDayoff = Loc.tr("Localizable", "screen.schedule.message_title_dayoff", fallback: "Your salon is closed on this day")
      public static let openHours = Loc.tr("Localizable", "screen.schedule.open_hours", fallback: "Working hours")
      public static let rectangular = Loc.tr("Localizable", "screen.schedule.rectangular", fallback: "Rectangular")
      public static let rounded = Loc.tr("Localizable", "screen.schedule.rounded", fallback: "Rounded")
      public static let selectMasters = Loc.tr("Localizable", "screen.schedule.select_masters", fallback: "Select specialists")
      public static let selectSeveral = Loc.tr("Localizable", "screen.schedule.select_several", fallback: "Select multiple")
      public static let settingsVacation = Loc.tr("Localizable", "screen.schedule.settings_vacation", fallback: "Vacation settings")
      public static let setupSchedule = Loc.tr("Localizable", "screen.schedule.setup_schedule", fallback: "Set up schedule")
      public static let setupVacation = Loc.tr("Localizable", "screen.schedule.setup_vacation", fallback: "Set up vacation")
      public static let shiftSchedule = Loc.tr("Localizable", "screen.schedule.shift_schedule", fallback: "Shift schedule")
      public static let start = Loc.tr("Localizable", "screen.schedule.start", fallback: "Start")
      public static let vacation = Loc.tr("Localizable", "screen.schedule.vacation", fallback: "Vacation")
      public static let viewMode = Loc.tr("Localizable", "screen.schedule.view_mode", fallback: "View mode")
      public static let weeklySchedule = Loc.tr("Localizable", "screen.schedule.weekly_schedule", fallback: "Weekly template")
      public static let workTime = Loc.tr("Localizable", "screen.schedule.work_time", fallback: "Working time")
      public static let workspaceSchedule = Loc.tr("Localizable", "screen.schedule.workspace_schedule", fallback: "Salon schedule")
      public enum EditDays {
        public static let one = Loc.tr("Localizable", "screen.schedule.edit_days.one", fallback: "Edit %{days} day")
        public static let other = Loc.tr("Localizable", "screen.schedule.edit_days.other", fallback: "Edit %{days} days")
      }
      public enum SalonTemplateTip {
        public static let action = Loc.tr("Localizable", "screen.schedule.salon_template_tip.action", fallback: "Set up salon template")
        public static let message = Loc.tr("Localizable", "screen.schedule.salon_template_tip.message", fallback: "Specialists working hours should fall within the salon working hours. Set up the salon schedule template first.")
        public static let title = Loc.tr("Localizable", "screen.schedule.salon_template_tip.title", fallback: "Salon schedule template is not set")
      }
      public enum ScheduleText {
        public static let breaks = Loc.tr("Localizable", "screen.schedule.schedule_text.breaks", fallback: "Offtimes: ")
        public static let dayIndex = Loc.tr("Localizable", "screen.schedule.schedule_text.day_index", fallback: "%{index} day: ")
        public static let dayOff = Loc.tr("Localizable", "screen.schedule.schedule_text.day_off", fallback: " - Day off")
        public static let everyday = Loc.tr("Localizable", "screen.schedule.schedule_text.everyday", fallback: "Every day: ")
      }
    }
    public enum ScheduleSetup {
      public enum Controls {
        public static let change = Loc.tr("Localizable", "screen.schedule_setup.controls.change", fallback: "Edit")
        public static let dayOff = Loc.tr("Localizable", "screen.schedule_setup.controls.day_off", fallback: "Day off")
        public static let fromToday = Loc.tr("Localizable", "screen.schedule_setup.controls.from_today", fallback: "From today")
        public static let start = Loc.tr("Localizable", "screen.schedule_setup.controls.start", fallback: "Start")
      }
    }
    public enum Search {
      public static let clientSearch = Loc.tr("Localizable", "screen.search.client_search", fallback: "Search for client")
      public static let list = Loc.tr("Localizable", "screen.search.list", fallback: "List")
      public static let map = Loc.tr("Localizable", "screen.search.map", fallback: "Map")
      public static let noSalons = Loc.tr("Localizable", "screen.search.no_salons", fallback: "No salons nearby")
      public static let notFound = Loc.tr("Localizable", "screen.search.not_found", fallback: "Nothing found")
      public static let placeholder = Loc.tr("Localizable", "screen.search.placeholder", fallback: "Find %{tag}")
      public static let searchBarField = Loc.tr("Localizable", "screen.search.search_bar_field", fallback: "Search")
    }
    public enum ServiceEditing {
      public static let accessSettingsTitle = Loc.tr("Localizable", "screen.service_editing.access_settings_title", fallback: "Настройки доступа")
      public static let accessTypeTitle = Loc.tr("Localizable", "screen.service_editing.access_type_title", fallback: "Доступ для клиентов")
      public static let archiveProcedureAction = Loc.tr("Localizable", "screen.service_editing.archive_procedure_action", fallback: "Архивировать")
      public static let archiveProcedureConfirmMessage = Loc.tr("Localizable", "screen.service_editing.archive_procedure_confirm_message", fallback: "Услуга перестанет быть доступной для записи и редактирования")
      public static let archiveProcedureConfirmTitle = Loc.tr("Localizable", "screen.service_editing.archive_procedure_confirm_title", fallback: "Архивировать услугу?")
      public static let archiveProcedureHint = Loc.tr("Localizable", "screen.service_editing.archive_procedure_hint", fallback: "Услуга будет удалена из каталога")
      public static let archiveProcedureTitle = Loc.tr("Localizable", "screen.service_editing.archive_procedure_title", fallback: "Перестать оказывать услугу")
      public static let breakNotSet = Loc.tr("Localizable", "screen.service_editing.break_not_set", fallback: "Без перерыва")
      public static let changeAccessType = Loc.tr("Localizable", "screen.service_editing.change_access_type", fallback: "Изменить настройки доступа")
      public static let dangerZoneTitle = Loc.tr("Localizable", "screen.service_editing.danger_zone_title", fallback: "Опасная зона")
      public static let onlineBookingHint = Loc.tr("Localizable", "screen.service_editing.online_booking_hint", fallback: "Позвольте клиентам записываться на услугу онлайн через маркетплейс, соцсети и прямые ссылки")
      public static let onlineBookingTitle = Loc.tr("Localizable", "screen.service_editing.online_booking_title", fallback: "Онлайн-запись")
      public static let postServiceBreakHint = Loc.tr("Localizable", "screen.service_editing.post_service_break_hint", fallback: "После завершения услуги новое бронирование начнётся только через указанный интервал")
      public static let postServiceBreakTitle = Loc.tr("Localizable", "screen.service_editing.post_service_break_title", fallback: "Перерыв после записи (необязательно)")
      public static let setBreakDuration = Loc.tr("Localizable", "screen.service_editing.set_break_duration", fallback: "Задать перерыв")
      public static let unsupportedSettingsMessage = Loc.tr("Localizable", "screen.service_editing.unsupported_settings_message", fallback: "Настройки онлайн-записи, доступа и перерыва пока не поддерживаются API. Отправлен запрос на расширение OpenAPI/SDK.")
    }
    public enum Services {
      public static let search = Loc.tr("Localizable", "screen.services.search", fallback: "Search for service")
    }
    public enum Settings {
      public static let currentPlan = Loc.tr("Localizable", "screen.settings.current_plan", fallback: "Current plan")
      public enum Billing {
        public static let currentTitle = Loc.tr("Localizable", "screen.settings.billing.current_title", fallback: "Current billing")
        public static let fullDetailsHint = Loc.tr("Localizable", "screen.settings.billing.full_details_hint", fallback: "Open billing for full details")
        public static func launchPromotion(_ p1: Int, _ p2: Int) -> String {
          return Loc.tr("Localizable", "screen.settings.billing.launch_promotion", p1, p2, fallback: "%1$d%% off for the first %2$d monthly billing cycles")
        }
        public static let managedOnWeb = Loc.tr("Localizable", "screen.settings.billing.managed_on_web", fallback: "Managed on web")
        public static let managedOnWebTitle = Loc.tr("Localizable", "screen.settings.billing.managed_on_web_title", fallback: "Billing managed on web")
        public static let noActivePlan = Loc.tr("Localizable", "screen.settings.billing.no_active_plan", fallback: "No active plan")
        public static let openAction = Loc.tr("Localizable", "screen.settings.billing.open_action", fallback: "Open billing")
        public static let pricingHint = Loc.tr("Localizable", "screen.settings.billing.pricing_hint", fallback: "Open billing for pricing")
        public static let renewsOnPrefix = Loc.tr("Localizable", "screen.settings.billing.renews_on_prefix", fallback: "Renews on")
        public static func smsPackTitle(_ p1: Int) -> String {
          return Loc.tr("Localizable", "screen.settings.billing.sms_pack_title", p1, fallback: "%1$d SMS credits")
        }
        public static let title = Loc.tr("Localizable", "screen.settings.billing.title", fallback: "Billing")
        public enum Interval {
          public static let monthly = Loc.tr("Localizable", "screen.settings.billing.interval.monthly", fallback: "Monthly")
          public static let yearly = Loc.tr("Localizable", "screen.settings.billing.interval.yearly", fallback: "Yearly")
        }
        public enum Period {
          public static let month = Loc.tr("Localizable", "screen.settings.billing.period.month", fallback: "month")
          public static let year = Loc.tr("Localizable", "screen.settings.billing.period.year", fallback: "year")
        }
        public enum Plan {
          public static let grow = Loc.tr("Localizable", "screen.settings.billing.plan.grow", fallback: "Grow")
          public static let growSummary = Loc.tr("Localizable", "screen.settings.billing.plan.grow_summary", fallback: "For busy teams that need stronger automation, better controls, and more room to scale.")
          public static let scale = Loc.tr("Localizable", "screen.settings.billing.plan.scale", fallback: "Scale")
          public static let scaleSummary = Loc.tr("Localizable", "screen.settings.billing.plan.scale_summary", fallback: "For established salons running higher seat counts and advanced operations.")
          public static let start = Loc.tr("Localizable", "screen.settings.billing.plan.start", fallback: "Start")
          public static let startSummary = Loc.tr("Localizable", "screen.settings.billing.plan.start_summary", fallback: "Best for small salons that need scheduling, staff management, and simple growth.")
        }
      }
      public enum DangerZone {
        public static let activate = Loc.tr("Localizable", "screen.settings.danger_zone.activate", fallback: "Activate")
        public static let activateHint = Loc.tr("Localizable", "screen.settings.danger_zone.activate_hint", fallback: "Restore salon operation")
        public static let activateTitle = Loc.tr("Localizable", "screen.settings.danger_zone.activate_title", fallback: "Activate salon")
        public static let deactivate = Loc.tr("Localizable", "screen.settings.danger_zone.deactivate", fallback: "Deactivate")
        public static let deactivateHint = Loc.tr("Localizable", "screen.settings.danger_zone.deactivate_hint", fallback: "Stop salon, remove from search")
        public static let deactivateTitle = Loc.tr("Localizable", "screen.settings.danger_zone.deactivate_title", fallback: "Deactivate salon")
        public static let deleteHint = Loc.tr("Localizable", "screen.settings.danger_zone.delete_hint", fallback: "This action cannot be undone")
        public static let deleteMessageAlert = Loc.tr("Localizable", "screen.settings.danger_zone.delete_message_alert", fallback: "To confirm, enter the salon name in the field below")
        public static let deletePlaceholder = Loc.tr("Localizable", "screen.settings.danger_zone.delete_placeholder", fallback: "Salon name")
        public static let deleteTitle = Loc.tr("Localizable", "screen.settings.danger_zone.delete_title", fallback: "Delete salon")
        public static let deleteTitleAlert = Loc.tr("Localizable", "screen.settings.danger_zone.delete_title_alert", fallback: "The action cannot be undone. Are you sure you want to delete?")
        public static let title = Loc.tr("Localizable", "screen.settings.danger_zone.title", fallback: "Danger zone")
      }
      public enum Description {
        public static let hide = Loc.tr("Localizable", "screen.settings.description.hide", fallback: "Hide")
        public static let showMore = Loc.tr("Localizable", "screen.settings.description.show_more", fallback: "Show more")
        public static let title = Loc.tr("Localizable", "screen.settings.description.title", fallback: "Description")
      }
      public enum Geo {
        public static let message = Loc.tr("Localizable", "screen.settings.geo.message", fallback: "Want to call a taxi or build a route? Choose the service you want to use")
        public static let selectApp = Loc.tr("Localizable", "screen.settings.geo.select_app", fallback: "Choose application")
      }
      public enum SalonType {
        public static let chain = Loc.tr("Localizable", "screen.settings.salon_type.chain", fallback: "Chain")
        public static let franchise = Loc.tr("Localizable", "screen.settings.salon_type.franchise", fallback: "Franchise")
        public static let individual = Loc.tr("Localizable", "screen.settings.salon_type.individual", fallback: "Individual")
        public static let salon = Loc.tr("Localizable", "screen.settings.salon_type.salon", fallback: "Salon")
      }
    }
    public enum Sharing {
      public static let linkButton = Loc.tr("Localizable", "screen.sharing.link_button", fallback: "Share link")
      public static let qrButton = Loc.tr("Localizable", "screen.sharing.qr_button", fallback: "Send QR code")
    }
    public enum UnitEconomic {
      public static let headerSubtitle = Loc.tr("Localizable", "screen.unit_economic.header_subtitle", fallback: "Overview of how customers find you")
      public static let maxCampaignsReached = Loc.tr("Localizable", "screen.unit_economic.max_campaigns_reached", fallback: "A maximum of 5 campaigns can be added to the chart")
      public static let metricAppointments = Loc.tr("Localizable", "screen.unit_economic.metric_appointments", fallback: "Appointments")
      public static let metricClicks = Loc.tr("Localizable", "screen.unit_economic.metric_clicks", fallback: "Clicks")
      public static let noCampaigns = Loc.tr("Localizable", "screen.unit_economic.no_campaigns", fallback: "No campaigns")
      public static let noData = Loc.tr("Localizable", "screen.unit_economic.no_data", fallback: "No data")
      public static let title = Loc.tr("Localizable", "screen.unit_economic.title", fallback: "Acquisition")
      public static let unsupportedMetricMessage = Loc.tr("Localizable", "screen.unit_economic.unsupported_metric_message", fallback: "Chart is available only for clicks and appointments")
      public enum Badge {
        public static let bestConversion = Loc.tr("Localizable", "screen.unit_economic.badge.best_conversion", fallback: "Best conversion")
        public static let repeatBooking = Loc.tr("Localizable", "screen.unit_economic.badge.repeat_booking", fallback: "Top repeat booking")
        public static let shortBooking = Loc.tr("Localizable", "screen.unit_economic.badge.short_booking", fallback: "booking")
        public static let shortClick = Loc.tr("Localizable", "screen.unit_economic.badge.short_click", fallback: "click")
        public static let shortConversion = Loc.tr("Localizable", "screen.unit_economic.badge.short_conversion", fallback: "conversion")
        public static let topBooking = Loc.tr("Localizable", "screen.unit_economic.badge.top_booking", fallback: "Top booking")
        public static func topByFormat(_ p1: Any) -> String {
          return Loc.tr("Localizable", "screen.unit_economic.badge.top_by_format", String(describing: p1), fallback: "Top by %@")
        }
        public static let topClick = Loc.tr("Localizable", "screen.unit_economic.badge.top_click", fallback: "Top click")
        public static let topRevenue = Loc.tr("Localizable", "screen.unit_economic.badge.top_revenue", fallback: "Top revenue")
      }
      public enum CampaignDetail {
        public static let adTracking = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.ad_tracking", fallback: "Ad tracking")
        public static let addEventManager = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.add_event_manager", fallback: "Add event manager")
        public static let affiliate = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.affiliate", fallback: "Affiliate")
        public static let campaignType = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.campaign_type", fallback: "Campaign type")
        public static let connectEventManager = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.connect_event_manager", fallback: "Connect")
        public static let connectedEventManagers = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.connected_event_managers", fallback: "Connected")
        public static let conversionRate = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.conversion_rate", fallback: "Conversion")
        public static let copied = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.copied", fallback: "Copied")
        public static let copyLink = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.copy_link", fallback: "Copy")
        public static let costPerAppointment = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.cost_per_appointment", fallback: "Cost per appointment")
        public static let costPerClick = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.cost_per_click", fallback: "Cost per click")
        public static let eventManagerDisplayNamePlaceholder = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.event_manager_display_name_placeholder", fallback: "Display name")
        public static let eventManagerEnabled = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.event_manager_enabled", fallback: "Enabled")
        public static let eventManagerExternalIdPlaceholder = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.event_manager_external_id_placeholder", fallback: "Pixel, tag, or container ID")
        public static let eventManagerProvider = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.event_manager_provider", fallback: "Provider")
        public static let eventManagerProviderOther = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.event_manager_provider_other", fallback: "Other")
        public static let eventManagerProviderPlaceholder = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.event_manager_provider_placeholder", fallback: "Provider code")
        public static let eventManagersEmpty = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.event_managers_empty", fallback: "Connect Meta Pixel, Google Ads, TikTok Pixel, or another event manager to keep campaign events synchronized.")
        public static let futureMetrics = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.future_metrics", fallback: "Future metrics")
        public static let futureMetricsHint = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.future_metrics_hint", fallback: "New metrics will appear here when they are ready.")
        public static let influencer = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.influencer", fallback: "Influencer")
        public static let linkTitle = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.link_title", fallback: "Invitation link")
        public static let manageEventManagers = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.manage_event_managers", fallback: "Event managers")
        public static let metricWidgetsSection = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.metric_widgets_section", fallback: "Key metrics")
        public static let monthlyChartSection = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.monthly_chart_section", fallback: "Monthly metrics")
        public static let newEventManager = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.new_event_manager", fallback: "New event manager")
        public static let plannedBudget = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.planned_budget", fallback: "Planned budget")
        public static let qrTitle = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.qr_title", fallback: "QR code")
        public static let remainingBudget = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.remaining_budget", fallback: "Remaining budget")
        public static let setupSection = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.setup_section", fallback: "Campaign setup")
        public static let shareButton = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.share_button", fallback: "Share campaign")
        public static let shareLink = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.share_link", fallback: "Share link")
        public static let shareQr = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.share_qr", fallback: "Share QR")
        public static let shareSheetMessage = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.share_sheet_message", fallback: "Invite customers with this campaign link.")
        public static let shareSheetTitle = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.share_sheet_title", fallback: "Share campaign")
        public static let sharingSection = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.sharing_section", fallback: "Share")
        public static let statsSection = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.stats_section", fallback: "Statistics")
        public static let totalAppointments = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.total_appointments", fallback: "Total appointments")
        public static let totalClicks = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.total_clicks", fallback: "Total clicks")
        public static let totalSpend = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.total_spend", fallback: "Total spend")
        public static let trackingActive = Loc.tr("Localizable", "screen.unit_economic.campaign_detail.tracking_active", fallback: "Active")
      }
      public enum CampaignGroup {
        public static let eventManagers = Loc.tr("Localizable", "screen.unit_economic.campaign_group.event_managers", fallback: "Event managers")
        public static let influencers = Loc.tr("Localizable", "screen.unit_economic.campaign_group.influencers", fallback: "Influencers")
        public static let organic = Loc.tr("Localizable", "screen.unit_economic.campaign_group.organic", fallback: "Organic")
        public static let paid = Loc.tr("Localizable", "screen.unit_economic.campaign_group.paid", fallback: "Paid traffic")
      }
      public enum CampaignType {
        public static let affiliate = Loc.tr("Localizable", "screen.unit_economic.campaign_type.affiliate", fallback: "Affiliate")
        public static let custom = Loc.tr("Localizable", "screen.unit_economic.campaign_type.custom", fallback: "Custom")
        public static let eventManager = Loc.tr("Localizable", "screen.unit_economic.campaign_type.event_manager", fallback: "Event manager")
        public static let influencer = Loc.tr("Localizable", "screen.unit_economic.campaign_type.influencer", fallback: "Influencer")
        public static let media = Loc.tr("Localizable", "screen.unit_economic.campaign_type.media", fallback: "Media")
        public static let share = Loc.tr("Localizable", "screen.unit_economic.campaign_type.share", fallback: "Share")
        public static let walkInQr = Loc.tr("Localizable", "screen.unit_economic.campaign_type.walk_in_qr", fallback: "Walk-in QR")
      }
      public enum Chart {
        public static let average = Loc.tr("Localizable", "screen.unit_economic.chart.average", fallback: "Average")
        public static let campaignSeries = Loc.tr("Localizable", "screen.unit_economic.chart.campaign_series", fallback: "Campaign")
        public static let dateAxis = Loc.tr("Localizable", "screen.unit_economic.chart.date_axis", fallback: "Date")
        public static let emptyMonthly = Loc.tr("Localizable", "screen.unit_economic.chart.empty_monthly", fallback: "Monthly metrics will appear after this campaign receives activity.")
        public static let metricSeries = Loc.tr("Localizable", "screen.unit_economic.chart.metric_series", fallback: "Metric")
        public static let monthAxis = Loc.tr("Localizable", "screen.unit_economic.chart.month_axis", fallback: "Month")
        public static let monthlyTitle = Loc.tr("Localizable", "screen.unit_economic.chart.monthly_title", fallback: "Monthly performance")
        public static let valueAxis = Loc.tr("Localizable", "screen.unit_economic.chart.value_axis", fallback: "Value")
      }
      public enum Tip {
        public enum SingleWorkplace {
          public static let action = Loc.tr("Localizable", "screen.unit_economic.tip.single_workplace.action", fallback: "Create company")
          public static let message = Loc.tr("Localizable", "screen.unit_economic.tip.single_workplace.message", fallback: "Share your link more often to increase clicks, or create another company to compare performance.")
          public static let title = Loc.tr("Localizable", "screen.unit_economic.tip.single_workplace.title", fallback: "More companies, more reach")
        }
      }
    }
    public enum Visit {
      public static let addToWalletReminder = Loc.tr("Localizable", "screen.visit.add_to_wallet_reminder", fallback: "Добавьте в Apple Wallet, чтобы не забыть о визите")
      public static let cancelMessage = Loc.tr("Localizable", "screen.visit.cancel_message", fallback: "Визит будет отменен и салон получит уведомление.")
      public static let cancelTitle = Loc.tr("Localizable", "screen.visit.cancel_title", fallback: "Отменить визит?")
      public static let fallbackTitle = Loc.tr("Localizable", "screen.visit.fallback_title", fallback: "Запись")
      public static let notePlaceholder = Loc.tr("Localizable", "screen.visit.note_placeholder", fallback: "Напишите заметку для салона")
      public static let noteTitle = Loc.tr("Localizable", "screen.visit.note_title", fallback: "Заметка")
      public static let title = Loc.tr("Localizable", "screen.visit.title", fallback: "Визит")
    }
    public enum Visits {
      public static let actionRequired = Loc.tr("Localizable", "screen.visits.action_required", fallback: "Требуют действия")
      public static let focusedFilter = Loc.tr("Localizable", "screen.visits.focused_filter", fallback: "В фокусе")
      public static let placeholderAll = Loc.tr("Localizable", "screen.visits.placeholder_all", fallback: "Нет визитов")
      public static let placeholderFocused = Loc.tr("Localizable", "screen.visits.placeholder_focused", fallback: "Нет предстоящих визитов")
      public static let title = Loc.tr("Localizable", "screen.visits.title", fallback: "Визиты")
      public static let unscheduled = Loc.tr("Localizable", "screen.visits.unscheduled", fallback: "Без даты")
      public static let visitFallbackTitle = Loc.tr("Localizable", "screen.visits.visit_fallback_title", fallback: "Запись")
    }
    public enum Workplace {
      public static let dashboard = Loc.tr("Localizable", "screen.workplace.dashboard", fallback: "Dashboard")
      public static let placeholderCreate = Loc.tr("Localizable", "screen.workplace.placeholder_create", fallback: "Start working with Maetry\n Create your first salon")
      public static let placeholderSelect = Loc.tr("Localizable", "screen.workplace.placeholder_select", fallback: "Select a salon to work with")
      public static let schedule = Loc.tr("Localizable", "screen.workplace.schedule", fallback: "Schedule")
      public static let settings = Loc.tr("Localizable", "screen.workplace.settings", fallback: "Settings")
      public static let workspace = Loc.tr("Localizable", "screen.workplace.workspace", fallback: "Appointments")
      public enum Action {
        public static let inviteEmployee = Loc.tr("Localizable", "screen.workplace.action.invite_employee", fallback: "Add employee")
        public static let readAll = Loc.tr("Localizable", "screen.workplace.action.read_all", fallback: "Mark as read")
        public static let sharing = Loc.tr("Localizable", "screen.workplace.action.sharing", fallback: "Share")
        public static let title = Loc.tr("Localizable", "screen.workplace.action.title", fallback: "Quick actions")
        public enum ClientMode {
          public static let subtitle = Loc.tr("Localizable", "screen.workplace.action.client_mode.subtitle", fallback: "Client mode")
          public static let title = Loc.tr("Localizable", "screen.workplace.action.client_mode.title", fallback: "Switch to")
        }
      }
      public enum EmptyState {
        public static let message = Loc.tr("Localizable", "screen.workplace.empty_state.message", fallback: "Create your own salon or join an existing one")
        public static let title = Loc.tr("Localizable", "screen.workplace.empty_state.title", fallback: "No salons yet")
      }
      public enum Menu {
        public static let createWorkplace = Loc.tr("Localizable", "screen.workplace.menu.create_workplace", fallback: "Create salon")
        public static let joinWorkplace = Loc.tr("Localizable", "screen.workplace.menu.join_workplace", fallback: "Join workplace")
      }
      public enum SelectionState {
        public static let message = Loc.tr("Localizable", "screen.workplace.selection_state.message", fallback: "Choose the salon you want to work in")
        public static let title = Loc.tr("Localizable", "screen.workplace.selection_state.title", fallback: "Select a salon")
      }
    }
    public enum WorkplaceEditing {
      public static let chooseFromGallery = Loc.tr("Localizable", "screen.workplace_editing.choose_from_gallery", fallback: "Choose from gallery")
      public static let individual = Loc.tr("Localizable", "screen.workplace_editing.individual", fallback: "Individual")
      public static let name = Loc.tr("Localizable", "screen.workplace_editing.name", fallback: "Name")
      public static let profilePhoto = Loc.tr("Localizable", "screen.workplace_editing.profile_photo", fallback: "Profile photo")
      public static let salon = Loc.tr("Localizable", "screen.workplace_editing.salon", fallback: "Salon")
      public static let salonChain = Loc.tr("Localizable", "screen.workplace_editing.salon_chain", fallback: "Salon chain")
      public static let salonDescription = Loc.tr("Localizable", "screen.workplace_editing.salon_description", fallback: "Salon description")
      public static let salonType = Loc.tr("Localizable", "screen.workplace_editing.salon_type", fallback: "Salon type")
      public static let yourDescription = Loc.tr("Localizable", "screen.workplace_editing.your_description", fallback: "Your description")
      public static let yourName = Loc.tr("Localizable", "screen.workplace_editing.your_name", fallback: "Your name")
    }
    public enum WorkplaceJoin {
      public static let codePlaceholder = Loc.tr("Localizable", "screen.workplace_join.code_placeholder", fallback: "Invite code")
      public static let description = Loc.tr("Localizable", "screen.workplace_join.description", fallback: "Paste the invite code or the full invite link.")
      public static let title = Loc.tr("Localizable", "screen.workplace_join.title", fallback: "Join workplace")
    }
    public enum Workspace {
      public static let collisionMessage = Loc.tr("Localizable", "screen.workspace.collision_message", fallback: "There is already an appointment scheduled for this time")
      public static let confirmation = Loc.tr("Localizable", "screen.workspace.confirmation", fallback: "Attention!")
      public static let contactClient = Loc.tr("Localizable", "screen.workspace.contact_client", fallback: "Contact")
      public static let dayOffMessage = Loc.tr("Localizable", "screen.workspace.day_off_message", fallback: "Your salon is closed on this day")
      public static let diaryType = Loc.tr("Localizable", "screen.workspace.diary_type", fallback: "Diary")
      public static let employeesCount = Loc.tr("Localizable", "screen.workspace.employees_count", fallback: "employee(s)")
      public static let goToScheduleSettings = Loc.tr("Localizable", "screen.workspace.go_to_schedule_settings", fallback: "Go to schedule settings")
      public static let listEmptyPlaceholder = Loc.tr("Localizable", "screen.workspace.list_empty_placeholder", fallback: "No appointments scheduled for this day yet")
      public static let listType = Loc.tr("Localizable", "screen.workspace.list_type", fallback: "List")
      public static let mastersQuantity = Loc.tr("Localizable", "screen.workspace.masters_quantity", fallback: "Number of specialists")
      public static let minutesShort = Loc.tr("Localizable", "screen.workspace.minutes_short", fallback: "mins")
      public static let rescheduleButton = Loc.tr("Localizable", "screen.workspace.reschedule_button", fallback: "Reschedule appointment")
      public static let selectMasters = Loc.tr("Localizable", "screen.workspace.select_masters", fallback: "Select specialists")
      public static func selectedCount(_ p1: Int) -> String {
        return Loc.tr("Localizable", "screen.workspace.selected_count", p1, fallback: "%d selected")
      }
      public static let slotDuration = Loc.tr("Localizable", "screen.workspace.slot_duration", fallback: "Journal frequency")
      public enum Action {
        public static let cancelBooking = Loc.tr("Localizable", "screen.workspace.action.cancel_booking", fallback: "Cancel Booking")
        public static let changeDuration = Loc.tr("Localizable", "screen.workspace.action.change_duration", fallback: "Change Duration")
        public static let confirmBooking = Loc.tr("Localizable", "screen.workspace.action.confirm_booking", fallback: "Confirm Booking")
        public static let declineBooking = Loc.tr("Localizable", "screen.workspace.action.decline_booking", fallback: "Decline Booking")
        public static let markAsPaid = Loc.tr("Localizable", "screen.workspace.action.mark_as_paid", fallback: "Mark as Paid")
        public static let markNoShow = Loc.tr("Localizable", "screen.workspace.action.mark_no_show", fallback: "Mark No-Show")
        public static let startAppointment = Loc.tr("Localizable", "screen.workspace.action.start_appointment", fallback: "Start Appointment")
      }
      public enum Contact {
        public static let chooseChannel = Loc.tr("Localizable", "screen.workspace.contact.choose_channel", fallback: "Choose a channel")
      }
      public enum Creation {
        public enum CreateAppointment {
          public static let subtitle = Loc.tr("Localizable", "screen.workspace.creation.create_appointment.subtitle", fallback: "Create a client booking")
          public static let title = Loc.tr("Localizable", "screen.workspace.creation.create_appointment.title", fallback: "Create appointment")
        }
        public enum ReserveTime {
          public static let subtitle = Loc.tr("Localizable", "screen.workspace.creation.reserve_time.subtitle", fallback: "Block time in schedule")
          public static let title = Loc.tr("Localizable", "screen.workspace.creation.reserve_time.title", fallback: "Reserve time")
        }
      }
      public enum Filter {
        public static let bookingStatus = Loc.tr("Localizable", "screen.workspace.filter.booking_status", fallback: "Booking status")
        public static let cancelled = Loc.tr("Localizable", "screen.workspace.filter.cancelled", fallback: "Cancelled")
        public static let confirmed = Loc.tr("Localizable", "screen.workspace.filter.confirmed", fallback: "Confirmed")
        public static let pending = Loc.tr("Localizable", "screen.workspace.filter.pending", fallback: "Pending")
        public static let title = Loc.tr("Localizable", "screen.workspace.filter.title", fallback: "Filters")
      }
      public enum Layout {
        public static let timeScale = Loc.tr("Localizable", "screen.workspace.layout.time_scale", fallback: "Time scale")
        public static let title = Loc.tr("Localizable", "screen.workspace.layout.title", fallback: "Layout")
        public static let visibleDays = Loc.tr("Localizable", "screen.workspace.layout.visible_days", fallback: "Visible days")
        public static let visibleDaysFive = Loc.tr("Localizable", "screen.workspace.layout.visible_days_five", fallback: "5 days")
        public static let visibleDaysOne = Loc.tr("Localizable", "screen.workspace.layout.visible_days_one", fallback: "1 day")
        public static let visibleDaysSeven = Loc.tr("Localizable", "screen.workspace.layout.visible_days_seven", fallback: "7 days")
        public static let visibleDaysThree = Loc.tr("Localizable", "screen.workspace.layout.visible_days_three", fallback: "3 days")
        public static let visibleSpecialists = Loc.tr("Localizable", "screen.workspace.layout.visible_specialists", fallback: "Visible specialists")
      }
      public enum Section {
        public static let editing = Loc.tr("Localizable", "screen.workspace.section.editing", fallback: "Editing")
        public static let status = Loc.tr("Localizable", "screen.workspace.section.status", fallback: "Status")
      }
      public enum ViewMode {
        public static let title = Loc.tr("Localizable", "screen.workspace.view_mode.title", fallback: "View mode")
      }
    }
  }
  public enum Service {
    public static let serviceInfo = Loc.tr("Localizable", "service.service_info", fallback: "%{duration} | %{price}")
    public enum Shortcut {
      public static let giveFeedback = Loc.tr("Localizable", "service.shortcut.give_feedback", fallback: "Please leave us feedback before app deletion. It will...")
      public static let mailBody = Loc.tr("Localizable", "service.shortcut.mail_body", fallback: "Hello!\nI am writing to share my review of the Maetry application. Below is my review:")
      public static let somethingWrong = Loc.tr("Localizable", "service.shortcut.something_wrong", fallback: "Something wrong?")
    }
  }
  public enum Shortcut {
    public enum Feedback {
      public static let entryHint = Loc.tr("Localizable", "shortcut.feedback.entry_hint", fallback: "Shake your phone to open the feedback menu.")
      public static let subtitle = Loc.tr("Localizable", "shortcut.feedback.subtitle", fallback: "Please leave us feedback before app deletion. It will...")
      public static let title = Loc.tr("Localizable", "shortcut.feedback.title", fallback: "Something wrong?")
    }
    public enum Mail {
      public static let body = Loc.tr("Localizable", "shortcut.mail.body", fallback: "Hello!\nI am writing to share my review of the Maetry application. Below is my review:")
      public static let subject = Loc.tr("Localizable", "shortcut.mail.subject", fallback: "Feedback about Maetry app")
    }
  }
  public enum Step {
    public enum ComplexChunks {
      public static let selectedProcedures = Loc.tr("Localizable", "step.complex_chunks.selected_procedures", fallback: "Selected procedures")
    }
    public enum Procedures {
      public static let procedureDescription = Loc.tr("Localizable", "step.procedures.procedure_description", fallback: "Description")
    }
    public enum TimeSlot {
      public static let timeZoneDifference = Loc.tr("Localizable", "step.time_slot.time_zone_difference", fallback: "Time zone difference")
    }
  }
  public enum Updatable {
    public enum Employee {
      public static let selectPosition = Loc.tr("Localizable", "updatable.employee.select_position", fallback: "Select position")
    }
    public enum Position {
      public static let title = Loc.tr("Localizable", "updatable.position.title", fallback: "Name")
      public static let titlePlaceholder = Loc.tr("Localizable", "updatable.position.title_placeholder", fallback: "Your title")
    }
    public enum ProfileUpdate {
      public static let enterName = Loc.tr("Localizable", "updatable.profile_update.enter_name", fallback: "Enter a new nickname")
      public static let placeholder = Loc.tr("Localizable", "updatable.profile_update.placeholder", fallback: "Name")
      public static let save = Loc.tr("Localizable", "updatable.profile_update.save", fallback: "Save")
      public static let title = Loc.tr("Localizable", "updatable.profile_update.title", fallback: "Update profile")
      public static let uploadAvatar = Loc.tr("Localizable", "updatable.profile_update.upload_avatar", fallback: "Upload new avatar")
    }
    public enum SalonUpdate {
      public static let enterName = Loc.tr("Localizable", "updatable.salon_update.enter_name", fallback: "Enter new name for your salon")
      public static let placeholder = Loc.tr("Localizable", "updatable.salon_update.placeholder", fallback: "Name")
      public static let salonType = Loc.tr("Localizable", "updatable.salon_update.salon_type", fallback: "Choose salon type")
      public static let save = Loc.tr("Localizable", "updatable.salon_update.save", fallback: "Save")
      public static let title = Loc.tr("Localizable", "updatable.salon_update.title", fallback: "Update salon")
      public static let uploadLogo = Loc.tr("Localizable", "updatable.salon_update.upload_logo", fallback: "Upload new logo")
    }
  }
  public enum Visit {
    public enum Status {
      public static let cancelled = Loc.tr("Localizable", "visit.status.cancelled", fallback: "Cancelled")
      public static let completed = Loc.tr("Localizable", "visit.status.completed", fallback: "Completed")
      public static let confirmed = Loc.tr("Localizable", "visit.status.confirmed", fallback: "Confirmed")
      public static let expired = Loc.tr("Localizable", "visit.status.expired", fallback: "Expired")
      public static let inProgress = Loc.tr("Localizable", "visit.status.in_progress", fallback: "In progress")
      public static let noShow = Loc.tr("Localizable", "visit.status.no_show", fallback: "No-show")
      public static let pendingClient = Loc.tr("Localizable", "visit.status.pending_client", fallback: "Pending your confirmation")
      public static let pendingMaster = Loc.tr("Localizable", "visit.status.pending_master", fallback: "Pending salon confirmation")
    }
  }
  public enum Widget {
    public enum Address {
      public static let navigation = Loc.tr("Localizable", "widget.address.navigation", fallback: "Build route")
      public static let title = Loc.tr("Localizable", "widget.address.title", fallback: "Address")
    }
    public enum Catalog {
      public static let cosmetologyTag = Loc.tr("Localizable", "widget.catalog.cosmetology_tag", fallback: "Cosmetology")
      public static let title = Loc.tr("Localizable", "widget.catalog.title", fallback: "Service catalog")
    }
    public enum ClientDangerZone {
      public static let deleteAlertMessage = Loc.tr("Localizable", "widget.client_danger_zone.delete_alert_message", fallback: "Это действие нельзя отменить.")
      public static let deleteAlertTitle = Loc.tr("Localizable", "widget.client_danger_zone.delete_alert_title", fallback: "Удалить клиента?")
      public static let deleteHint = Loc.tr("Localizable", "widget.client_danger_zone.delete_hint", fallback: "Действие необратимо. Карточка клиента и его контакты будут удалены.")
      public static let deleteTitle = Loc.tr("Localizable", "widget.client_danger_zone.delete_title", fallback: "Удалить клиента")
    }
    public enum Contacts {
      public static let action = Loc.tr("Localizable", "widget.contacts.action", fallback: "Add contact")
      public static let connect = Loc.tr("Localizable", "widget.contacts.connect", fallback: "Contact")
      public static let deleteConfirmation = Loc.tr("Localizable", "widget.contacts.delete_confirmation", fallback: "Confirm deletion")
      public static let noContacts = Loc.tr("Localizable", "widget.contacts.no_contacts", fallback: "No contacts")
      public static let noSearchResults = Loc.tr("Localizable", "widget.contacts.no_search_results", fallback: "No search results found")
      public static let placeholder = Loc.tr("Localizable", "widget.contacts.placeholder", fallback: "No contact methods specified")
      public static let saving = Loc.tr("Localizable", "widget.contacts.saving", fallback: "Saving")
      public static let selectContactType = Loc.tr("Localizable", "widget.contacts.select_contact_type", fallback: "Select contact type")
      public static let title = Loc.tr("Localizable", "widget.contacts.title", fallback: "Contacts")
    }
    public enum DangerZone {
      public static let title = Loc.tr("Localizable", "widget.danger_zone.title", fallback: "Danger zone")
    }
    public enum Dashboard {
      public enum DangerZone {
        public static let error = Loc.tr("Localizable", "widget.dashboard.danger_zone.error", fallback: "Dashboard danger zone error")
      }
    }
    public enum KnowledgeBase {
      public static let description = Loc.tr("Localizable", "widget.knowledge_base.description", fallback: "Here is all the information on how to use the application")
      public static let title = Loc.tr("Localizable", "widget.knowledge_base.title", fallback: "Knowledge base")
    }
    public enum Mirror {
      public static let description = Loc.tr("Localizable", "widget.mirror.description", fallback: "Quick access to the Maetry mirror.")
      public static let title = Loc.tr("Localizable", "widget.mirror.title", fallback: "Mirror")
    }
    public enum Position {
      public enum DangerZone {
        public static let confirmRemoval = Loc.tr("Localizable", "widget.position.danger_zone.confirm_removal", fallback: "Confirm removal")
        public static let deleteSubtitle = Loc.tr("Localizable", "widget.position.danger_zone.delete_subtitle", fallback: "Before deleting, make sure that all employees are no longer using this position.")
        public static let deleteTitle = Loc.tr("Localizable", "widget.position.danger_zone.delete_title", fallback: "Delete position")
        public static let positionRemoval = Loc.tr("Localizable", "widget.position.danger_zone.position_removal", fallback: "Position removal")
      }
    }
    public enum RecoveryMethods {
      public static let title = Loc.tr("Localizable", "widget.recovery_methods.title", fallback: "Recovery Methods")
    }
    public enum Timetable {
      public static let `break` = Loc.tr("Localizable", "widget.timetable.break", fallback: "Break")
      public static let offtimes = Loc.tr("Localizable", "widget.timetable.offtimes", fallback: "Offtimes")
      public static let title = Loc.tr("Localizable", "widget.timetable.title", fallback: "Working hours")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Loc {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = Bundle.module.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}
