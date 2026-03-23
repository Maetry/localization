// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Loc {
  public enum Appclip {
    public static let tagline = Loc.tr("Localizable", "appclip.tagline", fallback: "Simple tool for business management")
    public static let welcomeTo = Loc.tr("Localizable", "appclip.welcome_to", fallback: "Welcome to")
  }
  public enum Cell {
    public enum Contact {
      public static let selectPhoneNumber = Loc.tr("Localizable", "cell.contact.select_phone_number", fallback: "Select number")
    }
  }
  public enum Creatable {
    public enum Appointment {
      public static let afternoon = Loc.tr("Localizable", "creatable.appointment.afternoon", fallback: "Afternoon")
      public static let chooseCustomer = Loc.tr("Localizable", "creatable.appointment.choose_customer", fallback: "Please select the client for whom the appointment is being created")
      public static let client = Loc.tr("Localizable", "creatable.appointment.client", fallback: "Customer")
      public static let date = Loc.tr("Localizable", "creatable.appointment.date", fallback: "Date")
      public static let dayUnavailable = Loc.tr("Localizable", "creatable.appointment.day_unavailable", fallback: "Unfortunately, booking is not available on this day — please choose another date")
      public static let evening = Loc.tr("Localizable", "creatable.appointment.evening", fallback: "Evening")
      public static let morning = Loc.tr("Localizable", "creatable.appointment.morning", fallback: "Morning")
      public static let night = Loc.tr("Localizable", "creatable.appointment.night", fallback: "Night")
      public static let procedure = Loc.tr("Localizable", "creatable.appointment.procedure", fallback: "Procedure")
      public static let selectProcedure = Loc.tr("Localizable", "creatable.appointment.select_procedure", fallback: "Choose service")
      public static let selectProcedureFirstMessage = Loc.tr("Localizable", "creatable.appointment.select_procedure_first_message", fallback: "To select a date, you first need to choose a procedure")
      public static let selectTime = Loc.tr("Localizable", "creatable.appointment.select_time", fallback: "Specify convenient time for visit")
      public static let title = Loc.tr("Localizable", "creatable.appointment.title", fallback: "New appointment")
    }
    public enum Auth {
      public static let addRecoveryDescription = Loc.tr("Localizable", "creatable.auth.add_recovery_description", fallback: "Please provide your phone number or email.\nThis is necessary so that you can always restore access to your account.")
      public static let addRecoveryTitle = Loc.tr("Localizable", "creatable.auth.add_recovery_title", fallback: "Add recovery method")
      public static let addWorkplace = Loc.tr("Localizable", "creatable.auth.add_workplace", fallback: "Add a workstation to continue registration")
      public static let enterName = Loc.tr("Localizable", "creatable.auth.enter_name", fallback: "Who are you?")
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
    public enum Client {
      public static let namePlaceholder = Loc.tr("Localizable", "creatable.client.name_placeholder", fallback: "Enter name...")
      public static let title = Loc.tr("Localizable", "creatable.client.title", fallback: "New client")
      public static let unfinishedCreatable = Loc.tr("Localizable", "creatable.client.unfinished_creatable", fallback: "We found an unfinished client creation on your site!")
      public enum Field {
        public static let nameTitle = Loc.tr("Localizable", "creatable.client.field.name_title", fallback: "Name")
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
        public static let createService = Loc.tr("Localizable", "creatable.procedure.field.create_service", fallback: "Or create a new service")
        public static let descriptionPlaceholder = Loc.tr("Localizable", "creatable.procedure.field.description_placeholder", fallback: "Enter description...")
        public static let descriptionTitle = Loc.tr("Localizable", "creatable.procedure.field.description_title", fallback: "Procedure description")
        public static let durationTitle = Loc.tr("Localizable", "creatable.procedure.field.duration_title", fallback: "Specify the duration of the procedure")
        public static let executors = Loc.tr("Localizable", "creatable.procedure.field.executors", fallback: "Specialists")
        public static let namePlaceholder = Loc.tr("Localizable", "creatable.procedure.field.name_placeholder", fallback: "Enter name...")
        public static let nameTitle = Loc.tr("Localizable", "creatable.procedure.field.name_title", fallback: "Service")
        public static let priceTitle = Loc.tr("Localizable", "creatable.procedure.field.price_title", fallback: "Procedure price")
        public static let selectMasters = Loc.tr("Localizable", "creatable.procedure.field.select_masters", fallback: "Select specialists")
        public static let selectTemplate = Loc.tr("Localizable", "creatable.procedure.field.select_template", fallback: "Select from templates")
        public static let setDuration = Loc.tr("Localizable", "creatable.procedure.field.set_duration", fallback: "Set")
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
    public static let all = Loc.tr("Localizable", "reusable.all", fallback: "All")
    public static let allowButton = Loc.tr("Localizable", "reusable.allow_button", fallback: "Allow")
    public static let apply = Loc.tr("Localizable", "reusable.apply", fallback: "Apply")
    public static let `break` = Loc.tr("Localizable", "reusable.break", fallback: "Break")
    public static let cancel = Loc.tr("Localizable", "reusable.cancel", fallback: "Cancel")
    public static let close = Loc.tr("Localizable", "reusable.close", fallback: "Close")
    public static let `continue` = Loc.tr("Localizable", "reusable.continue", fallback: "Continue")
    public static let copyButton = Loc.tr("Localizable", "reusable.copy_button", fallback: "Copy")
    public static let delete = Loc.tr("Localizable", "reusable.delete", fallback: "Delete")
    public static let edit = Loc.tr("Localizable", "reusable.edit", fallback: "Edit")
    public static let english = Loc.tr("Localizable", "reusable.english", fallback: "English")
    public static let from = Loc.tr("Localizable", "reusable.from", fallback: "from")
    public static let hour = Loc.tr("Localizable", "reusable.hour", fallback: "h")
    public static let info = Loc.tr("Localizable", "reusable.info", fallback: "Information")
    public static let invitationLink = Loc.tr("Localizable", "reusable.invitation_link", fallback: "Send invitation link")
    public static let makeAppointment = Loc.tr("Localizable", "reusable.make_appointment", fallback: "Book")
    public static let minutes = Loc.tr("Localizable", "reusable.minutes", fallback: "min")
    public static let notFound = Loc.tr("Localizable", "reusable.not_found", fallback: "Nothing found")
    public static let ok = Loc.tr("Localizable", "reusable.ok", fallback: "Ok")
    public static let `repeat` = Loc.tr("Localizable", "reusable.repeat", fallback: "Repeat")
    public static let russian = Loc.tr("Localizable", "reusable.russian", fallback: "Russian")
    public static let save = Loc.tr("Localizable", "reusable.save", fallback: "Save")
    public static let search = Loc.tr("Localizable", "reusable.search", fallback: "Search")
    public static let select = Loc.tr("Localizable", "reusable.select", fallback: "Select")
    public static let skip = Loc.tr("Localizable", "reusable.skip", fallback: "Skip")
    public static let submitButton = Loc.tr("Localizable", "reusable.submit_button", fallback: "Done")
    public static let submitText = Loc.tr("Localizable", "reusable.submit_text", fallback: "Please check the entered information. When everything is ready — click 'Done' to save")
    public static let today = Loc.tr("Localizable", "reusable.today", fallback: "Today")
    public static let tomorrow = Loc.tr("Localizable", "reusable.tomorrow", fallback: "Tomorrow")
    public static let unknown = Loc.tr("Localizable", "reusable.unknown", fallback: "Unknown")
    public static let warning = Loc.tr("Localizable", "reusable.warning", fallback: "Attention")
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
    public enum Assignment {
      public static let client = Loc.tr("Localizable", "screen.assignment.client", fallback: "Customer")
      public static let executor = Loc.tr("Localizable", "screen.assignment.executor", fallback: "Professional")
      public static let inviteClient = Loc.tr("Localizable", "screen.assignment.invite_client", fallback: "Invite client")
      public static let inviteExecutor = Loc.tr("Localizable", "screen.assignment.invite_executor", fallback: "Invite specialist")
      public static let title = Loc.tr("Localizable", "screen.assignment.title", fallback: "Appointment")
      public enum DangerZone {
        public static let confirmDeleteMessage = Loc.tr("Localizable", "screen.assignment.danger_zone.confirm_delete_message", fallback: "Are you sure you want to delete this note permanently?")
        public static let deleteButton = Loc.tr("Localizable", "screen.assignment.danger_zone.delete_button", fallback: "Delete")
        public static let deleteDescription = Loc.tr("Localizable", "screen.assignment.danger_zone.delete_description", fallback: "The client will be notified about the appointment deletion")
        public static let deleteTitle = Loc.tr("Localizable", "screen.assignment.danger_zone.delete_title", fallback: "Delete appointment")
        public static let title = Loc.tr("Localizable", "screen.assignment.danger_zone.title", fallback: "Administration")
      }
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
    public enum DayScheduleUpdate {
      public static let dayOff = Loc.tr("Localizable", "screen.day_schedule_update.day_off", fallback: "Выходной")
      public static let duration = Loc.tr("Localizable", "screen.day_schedule_update.duration", fallback: "Duration")
      public static let endTime = Loc.tr("Localizable", "screen.day_schedule_update.end_time", fallback: "End time")
      public static let startTime = Loc.tr("Localizable", "screen.day_schedule_update.start_time", fallback: "Start time")
      public static let worktime = Loc.tr("Localizable", "screen.day_schedule_update.worktime", fallback: "Work time")
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
      public static let invite = Loc.tr("Localizable", "screen.employees.invite", fallback: "Invite")
      public static let masterSearch = Loc.tr("Localizable", "screen.employees.master_search", fallback: "Search for master")
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
    public enum Notice {
      public static let placeholder = Loc.tr("Localizable", "screen.notice.placeholder", fallback: "You haven't received any notifications yet")
      public static let readAll = Loc.tr("Localizable", "screen.notice.read_all", fallback: "Read all")
      public static let title = Loc.tr("Localizable", "screen.notice.title", fallback: "Notifications")
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
      public static let editImage = Loc.tr("Localizable", "screen.profile_editing.edit_image", fallback: "Edit")
      public static let name = Loc.tr("Localizable", "screen.profile_editing.name", fallback: "Name")
      public static let profilePhoto = Loc.tr("Localizable", "screen.profile_editing.profile_photo", fallback: "Profile name")
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
    public enum Services {
      public static let search = Loc.tr("Localizable", "screen.services.search", fallback: "Search for service")
    }
    public enum Settings {
      public static let currentPlan = Loc.tr("Localizable", "screen.settings.current_plan", fallback: "Current plan")
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
      public static let slotDuration = Loc.tr("Localizable", "screen.workspace.slot_duration", fallback: "Journal frequency")
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
  public enum Widget {
    public enum Address {
      public static let navigation = Loc.tr("Localizable", "widget.address.navigation", fallback: "Build route")
      public static let title = Loc.tr("Localizable", "widget.address.title", fallback: "Address")
    }
    public enum Catalog {
      public static let cosmetologyTag = Loc.tr("Localizable", "widget.catalog.cosmetology_tag", fallback: "Cosmetology")
      public static let title = Loc.tr("Localizable", "widget.catalog.title", fallback: "Service catalog")
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
    public enum Position {
      public enum DangerZone {
        public static let confirmRemoval = Loc.tr("Localizable", "widget.position.danger_zone.confirm_removal", fallback: "Confirm removal")
        public static let deleteSubtitle = Loc.tr("Localizable", "widget.position.danger_zone.delete_subtitle", fallback: "Before deleting, make sure that all employees are no longer using this position.")
        public static let deleteTitle = Loc.tr("Localizable", "widget.position.danger_zone.delete_title", fallback: "Delete position")
        public static let positionRemoval = Loc.tr("Localizable", "widget.position.danger_zone.position_removal", fallback: "Position removal")
      }
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
