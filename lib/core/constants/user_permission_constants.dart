class UserPermissionConstants {
  static const Map<String, dynamic> userPermissionGroupJson = {
    "count": 6,
    "next": null,
    "previous": null,
    "results": [
      {
        "id": 111213049456,
        "name": "OPER",
        "codename": "oper",
        "permissions": [
          {
            "id": 29,
            "codename": "1212",
            "name": "Суперадмин",
            "description": "Имеет полный доступ ко mac",
          },
        ],
      },
      {
        "id": 1,
        "name": "Superadmin",
        "codename": "superadmin",
        "permissions": [
          {
            "id": 29,
            "codename": "keycloak_administrator",
            "name": "Суперадмин",
            "description": "Имеет полный доступ ко всему",
          },

          {
            "id": 29,
            "codename": "1111",
            "name": "Суперадмин",
            "description": "Имеет полный доступ ко всему",
          },

          {
            "id": 999,
            "codename": "some_random_permission",
            "name": "Unknown Permission",
            "description": "This is a simulated unknown permission",
          },
          {
            "id": 888,
            "name": "Missing Codename Permission",
            "description": "This entry is missing the codename key",
          },
          {
            "id": 45,
            "codename": "keycloak_ai_chat",
            "name": "ИИ редактор",
            "description": "Имеет доступ к ИИ редактору",
          },
          {
            "id": 34,
            "codename": "keycloak_can_create_keycloak_user",
            "name": "Создание пользователей",
            "description":
                "Может создавать пользователей, которые могут входить в аккаунт",
          },
          {
            "id": 39,
            "codename": "keycloak_can_create_project",
            "name": "Создание проектов и группы проектов",
            "description":
                "Может создавать проекты и управлять ими\r\nМожет создавать группы проектов и управлять ими",
          },
          {
            "id": 78,
            "codename": "keycloak_car_order_admin",
            "name": null,
            "description": null,
          },
          {
            "id": 77,
            "codename": "keycloak_car_order_user",
            "name": null,
            "description": null,
          },
          {
            "id": 33,
            "codename": "keycloak_employee_manager",
            "name": "HR менеджер",
            "description":
                "Может создавать сотрудников и управлять ими\r\nМожет создавать контакты и управлять ими\r\nМожет просматривать посещаемость",
          },
          {
            "id": 40,
            "codename": "keycloak_guest",
            "name": "Гость",
            "description": "Доступны только чаты (на стадии разработки)",
          },
          {
            "id": 74,
            "codename": "keycloak_shooting_order_admin",
            "name": null,
            "description": null,
          },
          {
            "id": 75,
            "codename": "keycloak_shooting_order_user",
            "name": null,
            "description": null,
          },
          {
            "id": 32,
            "codename": "keycloak_sign_view_all_documents",
            "name": "Подпись: все документы",
            "description": "Все документы доступны к просмотру",
          },
          {
            "id": 31,
            "codename": "keycloak_sign_view_own_documents",
            "name": "Подпись: свои документы",
            "description":
                "Видит только свои документы, которые сам создал и может подписывать документы",
          },
          {
            "id": 30,
            "codename": "keycloak_simple_user",
            "name": "Обычный пользователь",
            "description":
                "Имеет доступ к задачам\r\nИмеет доступ к календарю\r\nИмеет доступ к чатам",
          },
          {
            "id": 135,
            "codename": "keycloak_video_surveillance",
            "name": null,
            "description": null,
          },
        ],
      },
      {
        "id": 2,
        "name": "HR",
        "codename": "hr",
        "permissions": [
          {
            "id": 34,
            "codename": "keycloak_can_create_keycloak_user",
            "name": "Создание пользователей",
            "description":
                "Может создавать пользователей, которые могут входить в аккаунт",
          },
          {
            "id": 33,
            "codename": "keycloak_employee_manager",
            "name": "HR менеджер",
            "description":
                "Может создавать сотрудников и управлять ими\r\nМожет создавать контакты и управлять ими\r\nМожет просматривать посещаемость",
          },
          {
            "id": 31,
            "codename": "keycloak_sign_view_own_documents",
            "name": "Подпись: свои документы",
            "description":
                "Видит только свои документы, которые сам создал и может подписывать документы",
          },
          {
            "id": 30,
            "codename": "keycloak_simple_user",
            "name": "Обычный пользователь",
            "description":
                "Имеет доступ к задачам\r\nИмеет доступ к календарю\r\nИмеет доступ к чатам",
          },
        ],
      },
      {
        "id": 3,
        "name": "ShootingCarOrderUser",
        "codename": "shooting_car_order_user",
        "permissions": [
          {
            "id": 77,
            "codename": "keycloak_car_order_user",
            "name": null,
            "description": null,
          },
          {
            "id": 75,
            "codename": "keycloak_shooting_order_user",
            "name": null,
            "description": null,
          },
          {
            "id": 30,
            "codename": "keycloak_simple_user",
            "name": "Обычный пользователь",
            "description":
                "Имеет доступ к задачам\r\nИмеет доступ к календарю\r\nИмеет доступ к чатам",
          },
        ],
      },
      {
        "id": 4,
        "name": "ShootingCarOrderAdmin",
        "codename": "shooting_car_order_admin",
        "permissions": [
          {
            "id": 78,
            "codename": "keycloak_car_order_admin",
            "name": null,
            "description": null,
          },
          {
            "id": 77,
            "codename": "keycloak_car_order_user",
            "name": null,
            "description": null,
          },
          {
            "id": 74,
            "codename": "keycloak_shooting_order_admin",
            "name": null,
            "description": null,
          },
          {
            "id": 75,
            "codename": "keycloak_shooting_order_user",
            "name": null,
            "description": null,
          },
          {
            "id": 30,
            "codename": "keycloak_simple_user",
            "name": "Обычный пользователь",
            "description":
                "Имеет доступ к задачам\r\nИмеет доступ к календарю\r\nИмеет доступ к чатам",
          },
        ],
      },
      {
        "id": 5,
        "name": "User",
        "codename": "user",
        "permissions": [
          {
            "id": 31,
            "codename": "keycloak_sign_view_own_documents",
            "name": "Подпись: свои документы",
            "description":
                "Видит только свои документы, которые сам создал и может подписывать документы",
          },
          {
            "id": 30,
            "codename": "keycloak_simple_user",
            "name": "Обычный пользователь",
            "description":
                "Имеет доступ к задачам\r\nИмеет доступ к календарю\r\nИмеет доступ к чатам",
          },
        ],
      },
    ],
  };
}
